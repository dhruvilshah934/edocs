using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DIPS
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var sb = new System.Text.StringBuilder();
            String id;
            id = Session["id"] as String;
            //Int64 uid=Int64.Parse(id);
            sb.Append("<br/><br/><br/><br/><br/><br/>");
            Response.Write("AADHAR id:" + id);
            //Response.Write("AADHAR id:"+Session["id"]);
        }

        protected void aadhar_Click(object sender, EventArgs e)
        {
            Response.Redirect("aadhar.aspx");

        }

        protected void pan_Click(object sender, EventArgs e)
        {
            Response.Redirect("panCheck.aspx");

        }

        protected void voter_Click(object sender, EventArgs e)
        {
            Response.Redirect("voterCheck.aspx");

        }
    }
}