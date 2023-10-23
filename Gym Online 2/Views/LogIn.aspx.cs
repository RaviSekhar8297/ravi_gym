using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Gym_Online_2.Views
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if (txtuserId.Text == "Admin" && txtPass2.Text == "123")
            {
                Response.Redirect("/Views/Admin/Admin.aspx");
            }
            else
            {
                string maicon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(maicon);
                con.Open();
                SqlCommand cmd = new SqlCommand("select UserName,PassWord,Role from RegisterMember where UserName=@UserName", con);
                cmd.Parameters.AddWithValue("@UserName", txtuserId.Text);
                cmd.Parameters.AddWithValue("@PassWord", txtPass2.Text);
                using (SqlDataReader myReader = cmd.ExecuteReader())
                {
                    if (myReader.Read())
                    {
                        if (myReader["UserName"].ToString() == txtuserId.Text)
                        {
                            if (myReader["PassWord"].ToString() == txtPass2.Text)
                            {
                                if (myReader["Role"].ToString() == "Receptionist")
                                {
                                    Session["UserName"] = myReader["UserName"].ToString();
                                    Response.Redirect("Receptionist/Receptionist2.aspx");
                                }
                                else if (myReader["Role"].ToString() == "Member")
                                {
                                    Session["UserName"] = myReader["UserName"].ToString();
                                    Response.Redirect("Member/Member3.aspx");
                                }
                                else
                                {
                                    Response.Write("Role Was Not Exist.....");
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('Wrong Password....')</script>");
                            }
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert(' User Does not Exist....')</script>");
                    }
                }
            }
        }
    }
}