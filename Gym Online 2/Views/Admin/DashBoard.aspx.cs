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
    public partial class DashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MembersCount();
            ReceptionistCount();
            TrainersCount();
        }

        private void TrainersCount()
        {
            string strcon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select Count(*) as TotalCount from Trainer", con);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    Label3.Text = reader["TotalCount"].ToString();
                }
                reader.Close();
            }
            con.Close();
            con.Dispose();
        }

        private void ReceptionistCount()
        {
            string strcon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select Count(*) as TotalCount from RegisterMember where Role='Receptionist'", con);
            using(SqlDataReader dr = cmd.ExecuteReader())
            {
                if (dr.Read())
                {
                    Label2.Text = dr["TotalCount"].ToString();
                }
                dr.Close();
            }
            con.Close();
            con.Dispose();
        }

        private void MembersCount()
        {
            string strcon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select Count(*) as TotalCount from RegisterMember where Role='Member'", con);
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                if (dr.Read())
                {
                    Label1.Text = dr["TotalCount"].ToString();
                }
                dr.Close();
            }
            con.Close();
            con.Dispose();
        }
    }
}