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
    public partial class Receptionist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                GridData();
            }
        }
        private void GridData()
        {
           string strcon = ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;
           SqlConnection con = new SqlConnection(strcon);
           con.Open();
           SqlCommand cmd = new SqlCommand("select * from RegisterMember where UserName='" + Session["UserName"] + "'", con);
           SqlDataAdapter da = new SqlDataAdapter(cmd);
           DataSet ds = new DataSet();
           da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}