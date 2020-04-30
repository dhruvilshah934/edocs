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
    public partial class WebForm9 : System.Web.UI.Page
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

            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data source=DESKTOP-CAN344L;initial catalog=dips;integrated Security=true";
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from users where aadhar_num='" + id + "'", con);

            SqlDataReader dra = cmd.ExecuteReader();
            dra.Read();
            string voter = dra.GetValue(6).ToString();
            string voterz = "0";
            if (voter.Equals(voterz))
            {
                Response.Redirect("votertext.aspx");
                dra.Close();
            }
            else
            {
                Response.Redirect("voterimage.aspx");
                dra.Close();
            }
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


            con.Close();

            //open aadhar db
            //show image of aadhar
            //close aadhar db
        }
    }
}