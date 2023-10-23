using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Gym_Online_2.Views.Admin
{
    public partial class AddPlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            string maincon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(maincon);
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand("insert into PlanDetails(PlanName,PlanDuration,PlanCost) values(@PlanName,@PlanDuration,@PlanCost)", sqlcon);
            cmd.Parameters.AddWithValue("@PlanName", txtplanname.Text);
            cmd.Parameters.AddWithValue("@PlanDuration", txtplanduration.Text);
            cmd.Parameters.AddWithValue("@PlanCost", txtplancostl.Text);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {

                Response.Write("<script>alert('You are Added " + txtplanname.Text + " Plan Successfully.......!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed.......!')</script>");
            }
            sqlcon.Close();
        }
    }
}