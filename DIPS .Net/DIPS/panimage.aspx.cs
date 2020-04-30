using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace DIPS
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var sb = new System.Text.StringBuilder();
            String id;
            id = Session["id"] as String;

            //Int64 uid=Int64.Parse(id);

            sb.Append("<br/><br/><br/><br/><br/><br/>");
            Response.Write("AADHAR id:" + id);
            Response.Write("AADHAR id:" + Session["id"]);
            SqlConnection conp = new SqlConnection();
            conp.ConnectionString = "Data source=DESKTOP-CAN344L;initial catalog=aadhar;integrated Security=true";
            conp.Open();
            SqlCommand cmdp = new SqlCommand("select * from pan where aadhar_num='" + id + "'", conp);
            SqlDataAdapter sda = new SqlDataAdapter(cmdp);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void aadhar_Click(object sender, EventArgs e)
        {
            Response.Redirect("aadhar.aspx");
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }

        protected void voter_Click(object sender, EventArgs e)
        {
            Response.Redirect("votercheck.aspx");
        }
    }
}