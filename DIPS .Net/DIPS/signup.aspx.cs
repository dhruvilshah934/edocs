            using System;
            using System.Collections.Generic;
            using System.Linq;
            using System.Web;
            using System.Web.UI;
            using System.Web.UI.WebControls;
            using System.Data.SqlClient;

namespace DIPS
    {
        public partial class WebForm2 : System.Web.UI.Page
        {
            SqlCommand cmd = new SqlCommand();
            SqlConnection con = new SqlConnection();
            SqlConnection con1 = new SqlConnection();
            protected void Page_Load(object sender, EventArgs e)
            {
                con.ConnectionString = "Data source=DESKTOP-CAN344L;initial catalog=dips;integrated Security=true";
                con.Open();

            }

            protected void submit_Click(object sender, EventArgs e)
            {
                SqlCommand cmdv = new SqlCommand("select aadhar_num from users where aadhar_num=" + txtaadhars.Text, con);
                SqlDataReader drav = cmdv.ExecuteReader();
                if (!drav.Read())                         //check if user exists
                {
                    con1.ConnectionString = "Data source=DESKTOP-CAN344L;initial catalog=aadhar;integrated Security=true";
                    con1.Open();
                    drav.Close();
                    SqlCommand cmd1 = new SqlCommand("Select fullname from aadhar where u_id=" + txtaadhars.Text, con1);
                    SqlDataReader dra = cmd1.ExecuteReader();
                    if (dra.Read())                                                 //check if aadhar number correct
                    {
                        string name = dra.GetValue(0).ToString();
                        string entered_name = txtnames.Text.ToString();
                        if (string.Equals(entered_name, name))                       //check if aadhar name matches with entered name
                        {
                            String pan = "0", voter = "0";
                            SqlCommand cmd = new SqlCommand("insert into users" + "(fullname,mobile_num,aadhar_num,dob,pwd,pan_num,voter_num)values(@fullname,@mobile_num,@aadhar_num,@dob,@pwd,@pan_num,@voter_num)", con);
                            cmd.Parameters.AddWithValue("@fullname", txtnames.Text);
                            cmd.Parameters.AddWithValue("@mobile_num", txtnumbers.Text);
                            cmd.Parameters.AddWithValue("@aadhar_num", txtaadhars.Text);
                            cmd.Parameters.AddWithValue("@dob", txtdates.Text);
                            cmd.Parameters.AddWithValue("@pwd", txtpasswords.Text);
                            cmd.Parameters.AddWithValue("@pan_num", pan);
                            cmd.Parameters.AddWithValue("@voter_num", voter);
                            cmd.ExecuteNonQuery();
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Successfully Registered Please proceed to sign in');window.location='signin.aspx';</script>");

                            //Response.Write("<script>alert('Click Ok to SignIN')</script>");
                            //Response.Redirect("signin.aspx");
                        }
                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please enter correct aadhar number')</script>");
                        //Response.Redirect("index.aspx");
                    }
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Already Registered Please proceed to sign in');window.location='signin.aspx';</script>");
                }
            }
        }
    }