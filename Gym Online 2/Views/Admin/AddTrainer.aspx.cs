using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.IO;

namespace Gym_Online_2.Views.Admin
{
    public partial class AddTrainer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            string Role = "";
            if (rdbmale.Checked == true)
            {
                Role = rdbmale.Text;
            }
            else
            {
                Role = rdbfemale.Text;
            }
            string maincon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(maincon);
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand("insert into Trainer(TName,Gender,Email,Phone,Address,Type) values (@TName,@Gender,@Email,@Phone,@Address,@Type)", sqlcon);
            cmd.Parameters.AddWithValue("@TName", txttrinername.Text);
            cmd.Parameters.AddWithValue("@Gender", Role);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Phone", txtphone.Text);
            cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@Type", txttrineetyepe.Text);
            int i = cmd.ExecuteNonQuery();

            MailMessage mm = new MailMessage("software.trainee1@brihaspathi.com", txtemail.Text);
            mm.Subject = "Student Registation Details....!";
            mm.Body = "Hi ,<br/>Mr/Ms " + txttrinername.Text + " You Are "+txttrineetyepe.Text+ " <br /> Your Name has been Registered Successfully  ";
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
                Response.Write("<script>alert('You Are Added " + txttrinername.Text + " in Triner Successfully.......!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed.......!')</script>");
            }          
            sqlcon.Close();
        }
    }
}