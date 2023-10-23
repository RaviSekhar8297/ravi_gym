using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace Gym_Online_2.Views.Admin
{
    public partial class AddReceptionist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            string Role = "";
            if (recept.Checked == true)
            {
                Role = recept.Text;
            }
            else
            {
                Role = member.Text;
            }

            string Gender = "";
            if (rdbmale.Checked == true)
            {
                Gender = rdbmale.Text;
            }
            else
            {
                Gender = rdmfemale.Text;
            }
            string maincon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(maincon);
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand("insert into RegisterMember(Name,Role,Address,Email,Gender,UserName,PassWord,Phone,DOB,Age,Height,Weight) values(@Name,@Role,@Address,@Email,@Gender,@UserName,@PassWord,@Phone,@DOB,@Age,@Height,@Weight)",sqlcon);
            cmd.Parameters.AddWithValue("@Name", name.Text);
            cmd.Parameters.AddWithValue("@Role", Role);
            cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@UserName", txtusername.Text);
            cmd.Parameters.AddWithValue("@PassWord", txtpassword.Text);
            cmd.Parameters.AddWithValue("@Phone", txtmobile.Text);
            cmd.Parameters.AddWithValue("@DOB", txtdob.Text);
            cmd.Parameters.AddWithValue("@Age", txtage.Text);
            cmd.Parameters.AddWithValue("@Height", txtheight.Text);
            cmd.Parameters.AddWithValue("@Weight", txtweight.Text);
            int i = cmd.ExecuteNonQuery();

            MailMessage mm = new MailMessage("software.trainee1@brihaspathi.com", txtemail.Text);
            mm.Subject = "Student Registation Details....!";
            mm.Body = "Hi ,<br/>Mr/Ms " + name.Text + "  <br /> Your Name has been Registered Successfully  ";
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            NetworkCredential nc = new NetworkCredential("software.trainee1@brihaspathi.com", "RAVI8297");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = nc;
            smtp.Send(mm);

            if (i > 0)
            {
                Response.Write("<script>alert('You Are Added " + name.Text + " in Receptionist.......!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed.......!')</script>");
            }
            sqlcon.Close();
        }
    }
}