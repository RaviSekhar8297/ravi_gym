using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Gym_Online_2.Views.Member
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnforgotpassword_Click(object sender, EventArgs e)
        {
            string maicon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(maicon);
            con.Open();
            SqlCommand cmd = new SqlCommand("update RegisterMember set PassWord='" + txtnewpassword.Text + "' where Id='" + txtid.Text + "'", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Your New Password Was Changed Successfull...')</script>");
                txtid.Text = "";
                txtnewpassword.Text = "";
                txtcofirmpassword.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Id was not found....')</script>");
            }
           
        }
    }
}