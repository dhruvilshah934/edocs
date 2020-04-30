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
    public partial class WebForm4 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //get aadhar number and name from USER database to display information
            var sb = new System.Text.StringBuilder();
            String id;
            id = Session["id"] as String;

            //Int64 uid=Int64.Parse(id);

            sb.Append("<br/><br/><br/><br/><br/><br/>");
            Response.Write("AADHAR id:" + id);
            Response.Write("AADHAR id:" + Session["id"]);

            //string co = ConfigurationManager.ConnectionStrings["aadhar"].ConnectionString;

            SqlConnection cona = new SqlConnection();
            cona.ConnectionString = "Data source=DESKTOP-CAN344L;initial catalog=aadhar;integrated Security=true";
            cona.Open();
            SqlCommand cmda = new SqlCommand("select * from aadhar where u_id='" + id + "'", cona);

            //SqlDataReader dra = cmda.ExecuteReader();

            SqlDataAdapter sda = new SqlDataAdapter(cmda);

            /* if (dra.Read())
             {
                 String uid = dra.GetValue(0).ToString();
                 Response.Write(uid);
                 if (id == uid)
                 {
                     String image = dra.GetValue(5).ToString();
                     Session["image"] = image;

               <-- Extra      //Response.Redirect("aadhar.aspx");
                     //var sb = new System.Text.StringBuilder();
                     //sb.Append("<img src=support/" + image + ">");
                     //Response.Write(image);  -->

                 }
             }*/

            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            cona.Close();

            //open aadhar db
            //show image of aadhar
            //close aadhar db
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashboard.aspx");
        }

        protected void pan_Click(object sender, EventArgs e)
        {
            Response.Redirect("panCheck.aspx");
            //open connection to user db
            //get value for pancard number from USER db and store in variable pan_no
            //if pan_no is not equal to 0 then open pan image from pan db where pan_no is equal to pan_no variable
            //else open new page to get pan number
        }

        protected void voter_Click(object sender, EventArgs e)
        {
            Response.Redirect("voterCheck.aspx");
            //open connection to user db
            //get value for votercard number from USER db and store in variable voter_no
            //if voter_no is not equal to 0 then open pan image from pan db where voter_no is equal to voter_no variable
            //else open new page to get pan number
        }
    }
}
//get page
//from user db get aadhar no and name and store in variables
//find pan_no from pan table where aadhar_no is same as in variable
//if matched name then update user db and redirect to show image