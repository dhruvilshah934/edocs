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
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            var sb = new System.Text.StringBuilder();
            String id;
            id = Session["id"] as String;

            //Int64 uid=Int64.Parse(id);

            sb.Append("<br/><br/><br/><br/><br/><br/>");
            Response.Write("AADHAR id:" + id);
            Response.Write("AADHAR id:" + Session["id"]);

            Session["vid"] = txtvoter.Text;
            string vid;
            vid = Session["vid"] as String;

            SqlConnection conv = new SqlConnection();
            conv.ConnectionString = "Data source=DESKTOP-CAN344L;initial catalog=aadhar;integrated Security=true";
            conv.Open();
            SqlCommand cmdv = new SqlCommand("select * from voter where voter_num='" + vid + "'", conv);
            SqlDataReader dr = cmdv.ExecuteReader();
            if (dr.Read())
            {
                string voterid = dr.GetValue(1).ToString();

                if (vid.Equals(voterid))
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = "Data source=DESKTOP-CAN344L;initial catalog=dips;integrated Security=true";
                    con.Open();
                    SqlCommand cmd = new SqlCommand("UPDATE users SET voter_num = '" + vid + "' WHERE aadhar_num = '" + id + "'", con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("dashboard.aspx");
                }
            }
        }
    }
}