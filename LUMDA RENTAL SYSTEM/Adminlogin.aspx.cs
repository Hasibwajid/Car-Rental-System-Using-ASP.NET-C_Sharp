using System;
using System.Data;
using Oracle.ManagedDataAccess.Client;
using System.Web.UI.WebControls;

namespace LUMDA_RENTAL_SYSTEM
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        static string connectionString = "Data Source= (DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521)) (CONNECT_DATA =    (SERVER = DEDICATED)(SERVICE_NAME = orcl)\r\n    )\r\n  );User Id=system;Password=Fridon8890;";
        OracleConnection con = new OracleConnection(connectionString);
        OracleCommand cmd;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_submit_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd = new OracleCommand("select * from admins where admin_id=" + txt_id.Text.Trim() + " And password = '" + txt_pass.Text.Trim() + "'", con);

                OracleDataReader odr = cmd.ExecuteReader();

                if (odr.HasRows)
                {
                    txt_message.Text = "Logged in successfully";
                    
                    while (odr.Read())
                    {
                        Session["role"] = "admin";
                        Session["f_name"] = odr["first_name"].ToString();
                        Session["status"] = ""; 
                    }
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    txt_message.Text = "Invalid credentials";
                    txt_message.ForeColor = System.Drawing.Color.Red;
                    //Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        private void clear_txt()
        {
            txt_id.Text ="" ;
            txt_pass.Text = "";
        }
    }
}