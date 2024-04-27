using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LUMDA_RENTAL_SYSTEM
{
    public partial class WebForm13 : System.Web.UI.Page
    {

        static string connectionString = "Data Source= (DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521)) (CONNECT_DATA =    (SERVER = DEDICATED)(SERVICE_NAME = orcl)\r\n    )\r\n  );User Id=system;Password=Fridon8890;";
        OracleConnection con = new OracleConnection(connectionString);
        OracleCommand cmd;


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void register_user_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_register_page.aspx");
        }


        protected void login_submit_Click(object sender, EventArgs e)
        {
            string query = "select * from customers where CUSTOMER_ID=" + txt_id.Text.Trim() + " And PASSWORD = '" + txt_pass.Text.Trim() + "'";

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd = new OracleCommand(query, con);
                OracleDataReader odr = cmd.ExecuteReader();

                if (odr.HasRows)
                {
                    txt_message.Text = "Logged in successfully";
                    while (odr.Read())
                    {
                        Session["role"] = "user";
                        Session["f_name"] = odr["first_name"].ToString();
                        Session["user_id"] = odr["customer_id"].ToString();
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
            txt_id.Text = "";
            txt_pass.Text = "";
        }

        //private bool isUser_registed()
        //{
        //    try
        //    {
        //        if (con.State == ConnectionState.Closed)
        //        {
        //            con.Open();
        //        }
        //        cmd = new OracleCommand("select * from customers where id = '" + txt_id.Text.Trim() + "';", con);

        //        OracleDataAdapter oda = new OracleDataAdapter(cmd);
        //        DataTable dt = new DataTable();
        //        oda.Fill(dt);

        //        if (dt.Rows.Count >= 1)
        //        {
        //            return true;
        //        }
        //        else
        //        {
        //            return false;
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "');<script>");
        //        return false;
        //    }







    }
}