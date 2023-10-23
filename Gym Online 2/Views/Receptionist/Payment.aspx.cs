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
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtstartdate.Text = DateTime.Now.ToString();
            if (!IsPostBack)
            {
                ShowPlan();
                MemberName();
                Triner();
            }
        }

        private void Triner()
        {
            ddltrinername.Items.Add(new ListItem("-- Select Trainer Name --", ""));
            ddltrinername.AppendDataBoundItems = true;
            string maincon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(maincon);
            String strQuery = "select * from Trainer";
            SqlConnection con = new SqlConnection(maincon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                ddltrinername.DataSource = cmd.ExecuteReader();
                ddltrinername.DataTextField = "TName";
                ddltrinername.DataValueField = "TId";
                ddltrinername.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        private void MemberName()
        {
            ddlname.Items.Add(new ListItem("-- Select Name --", ""));
            ddlname.AppendDataBoundItems = true;
            string maincon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(maincon);
            String strQuery = "select RId,Name from RegisterMember where Role='member'";
            SqlConnection con = new SqlConnection(maincon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                ddlname.DataSource = cmd.ExecuteReader();
                ddlname.DataTextField = "Name";
                ddlname.DataValueField = "RId";
                ddlname.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        private void ShowPlan()
        {
           
            ddlplanmaster.Items.Add(new ListItem("-- Select Plan --", ""));
            ddlplanmaster.AppendDataBoundItems = true;
            string maincon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(maincon);
            String strQuery = "select PlanId, PlanName from PlanDetails";
            SqlConnection con = new SqlConnection(maincon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                ddlplanmaster.DataSource = cmd.ExecuteReader();
                ddlplanmaster.DataTextField = "PlanName";
                ddlplanmaster.DataValueField = "PlanId";
                ddlplanmaster.DataBind();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            string maincon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(maincon);
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand("insert into Payment(Name,PlanMaster,Duration,Cost,TrainerName,Timmings,Paid,PaymentMode,Remaining,StartDate,ExpireDate,RenewalDate) values(@Name,@PlanMaster,@Duration,@Cost,@TrainerName,@Timmings,@Paid,@PaymentMode,@Remaining,@StartDate,@ExpireDate,@RenewalDate)", sqlcon);
            cmd.Parameters.AddWithValue("@Name", ddlname.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@PlanMaster", ddlplanmaster.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Duration", txtduration.Text);
            cmd.Parameters.AddWithValue("@Cost", txtcost.Text);
            cmd.Parameters.AddWithValue("@TrainerName",ddltrinername.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Timmings", ddltimmings.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@PaymentMode", ddlpaymentmode.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Paid", txtpaid.Text);
            cmd.Parameters.AddWithValue("@Remaining", txtremaining.Text);
            cmd.Parameters.AddWithValue("@StartDate", txtstartdate.Text);
            cmd.Parameters.AddWithValue("@ExpireDate", txtenddate.Text);
            cmd.Parameters.AddWithValue("@RenewalDate", txtrenewal.Text);
           int i= cmd.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Write("<script>alert('Inserted.......!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Failed.......!')</script>");
            }
            sqlcon.Close();
        }

        protected void ddlname_SelectedIndexChanged(object sender, EventArgs e)
        {
            string maicon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(maicon);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from RegisterMember where" +
                              " RId = @RId", con);
            cmd.Parameters.AddWithValue("@RId", ddlname.SelectedItem.Text);
            cmd.ExecuteNonQuery();           
            con.Close();
        }

        protected void ddlplanmaster_SelectedIndexChanged(object sender, EventArgs e)
        {
            String strConnString = ConfigurationManager
                          .ConnectionStrings["MyConnection"].ConnectionString;
            String strQuery = "select PlanDuration, PlanCost from PlanDetails where" +
                              " PlanId = @PlanId";
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@PlanId", ddlplanmaster.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    txtduration.Text = sdr[0].ToString();
                    txtcost.Text = sdr["PlanCost"].ToString();
                    int days = (Convert.ToInt32(txtduration.Text));

                    // now date
                    DateTime currentDate = DateTime.Now;

                    // end date
                    DateTime newDate = currentDate.AddMonths(days);

                    txtenddate.Text = newDate.ToString();
                    // renewal Date
                    DateTime newDate1 = newDate.AddDays(1);
                    txtrenewal.Text = newDate1.ToString("yyyy/MM/dd");
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        protected void txtpaid_TextChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt32(txtcost.Text) > Convert.ToInt32(txtpaid.Text))
            {
                int balence = Convert.ToInt32(txtcost.Text) - Convert.ToInt32(txtpaid.Text);
                txtremaining.Text = balence.ToString();
            }
            else
            {
                txtremaining.Text = "0";
            }
        }
    }
}