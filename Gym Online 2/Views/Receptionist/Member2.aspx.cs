using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Gym_Online_2.Views.Receptionist
{
    public partial class Member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AllData();
            }
        }

        private void AllData()
        {
            string strcon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Trainer", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnmember_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddMember.aspx");
        }

        protected void btnpayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }

        //protected void btnrenewal_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("RenewalPlan.aspx");
        //}

        protected void renewallist_Click(object sender, EventArgs e)
        {
            Response.Redirect("RenewalsList.aspx");
        }
    }
}