using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace DIPS
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=DESKTOP-CAN344L;initial catalog=dips;integrated Security=true";
            con.Open();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from users where aadhar_num='"+ txtaadhar.Text + "' and pwd='"+ txtpassword.Text +"'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["id"] = txtaadhar.Text;
                Response.Redirect("dashboard.aspx");
                //con.Close();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Aadhar-Number or Password');window.location='signin.aspx';</script>");

            }
        }
    }
}