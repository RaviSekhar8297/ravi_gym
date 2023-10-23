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
    public partial class RenewalPlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtid_TextChanged(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select Name from Payment where MId=@MId", con);
            cmd.Parameters.AddWithValue("@MId", txtid.Text);
           using(SqlDataReader dr = cmd.ExecuteReader())
           {
                if (dr.Read())
                {
                    txtname.Text = dr["Name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('You Entered  " + txtid.Text + " its Wrong Id...')</script>");
                }
                dr.Close();
           }
            con.Close();
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("update Payment set ExpireDate='" + txtplanexpire.Text + "',RenewalDate='" + txtrenewal.Text + "' where MId='" + txtid.Text + "'", con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Your Plan Expired " + txtplanexpire.Text + " Updated Successfully...')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed.....')</script>");
            }
            txtid.Text = "";
            txtname.Text = "";
            txtplanexpire.Text = "";
            txtrenewal.Text = "";
            rblrenewal.SelectedItem.Text = "";
        }

        protected void rblrenewal_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Payment where MId=@MId", con);
            cmd.Parameters.AddWithValue("@MId", txtid.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (rblrenewal.SelectedItem.Text == "1")
                {
                    int Month = 1;

                    // now date
                    DateTime currentDate = DateTime.Now;

                    // end date
                    DateTime newDate = currentDate.AddMonths(Month);

                    txtplanexpire.Text = newDate.ToString();
                    // renewal Date
                    DateTime newDate1 = newDate.AddDays(1);
                    txtrenewal.Text = newDate1.ToString("yyyy/MM/dd");
                }
                else if (rblrenewal.SelectedItem.Text == "3")
                {
                    int Month = 3;

                    // now date
                    DateTime currentDate = DateTime.Now;

                    // end date
                    DateTime newDate = currentDate.AddMonths(Month);

                    txtplanexpire.Text = newDate.ToString();
                    // renewal Date
                    DateTime newDate1 = newDate.AddDays(1);
                    txtrenewal.Text = newDate1.ToString("yyyy/MM/dd");
                }
                else if (rblrenewal.SelectedItem.Text == "6")
                {
                    int Month = 6;

                    // now date
                    DateTime currentDate = DateTime.Now;

                    // end date
                    DateTime newDate = currentDate.AddMonths(Month);

                    txtplanexpire.Text = newDate.ToString();
                    // renewal Date
                    DateTime newDate1 = newDate.AddDays(1);
                    txtrenewal.Text = newDate1.ToString("yyyy/MM/dd");
                }
                else if (rblrenewal.SelectedItem.Text == "9")
                {
                    int Month = 9;

                    // now date
                    DateTime currentDate = DateTime.Now;

                    // end date
                    DateTime newDate = currentDate.AddMonths(Month);

                    txtplanexpire.Text = newDate.ToString();
                    // renewal Date
                    DateTime newDate1 = newDate.AddDays(1);
                    txtrenewal.Text = newDate1.ToString("yyyy/MM/dd");
                }
                else if (rblrenewal.SelectedItem.Text == "12")
                {
                    int Month = 12;

                    // now date
                    DateTime currentDate = DateTime.Now;

                    // end date
                    DateTime newDate = currentDate.AddMonths(Month);

                    txtplanexpire.Text = newDate.ToString();
                    // renewal Date
                    DateTime newDate1 = newDate.AddDays(1);
                    txtrenewal.Text = newDate1.ToString("yyyy/MM/dd");
                }
                else
                {

                }
                dr.Close();
            }
            con.Close();
        }
    }
}