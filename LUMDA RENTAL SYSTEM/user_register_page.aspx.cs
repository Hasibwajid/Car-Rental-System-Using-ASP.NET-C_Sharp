using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using Oracle.ManagedDataAccess.Client;


namespace LUMDA_RENTAL_SYSTEM
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        static string connectionString = "Data Source= (DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521)) (CONNECT_DATA =    (SERVER = DEDICATED)(SERVICE_NAME = orcl)\r\n    )\r\n  );User Id=system;Password=Fridon8890;";
        OracleConnection con = new OracleConnection(connectionString);
        OracleCommand cmd;
        OracleDataAdapter oda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (is_cus_Exist())
            {
                Response.Write("<script>alert('User with same id already exists.');</script>");
            }
            else
            {
                addNewcus();
            }
        }
        private bool is_cus_Exist()
        {
            try
            {
                con = new OracleConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "select * from customers where customer_id =" + Convert.ToInt32(id.Text.Trim()) + "";
                cmd = new OracleCommand(query, con);
                oda = new OracleDataAdapter(cmd);
                dt = new DataTable();
                oda.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message.ToString() + "');</script>");
                return false;
            }
        }
        private void addNewcus()
        {
            try
            {
                //store img in folder car_inventory_fol
                string file_path = "~/car_inventory_fol/OIP.jpg";
                string file_name = Path.GetFileName(file_upload.FileName);
                file_upload.SaveAs(Server.MapPath("car_inventory_fol/" + file_name));
                file_path = "~/car_inventory_fol/" + file_name;


                con = new OracleConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string query1 = "insert into customers " +
                    " values (" + Convert.ToInt32(id.Text.Trim()) + ",'" +
                    f_name.Text.Trim() + "','" + last_name.Text.Trim() + "','" +
                    rb_gender.Text.Trim() + "',"+22+",'"
                    + contact_no.Text.Trim() + "','" + email.Text.Trim() + "','" + password.Text.Trim() + "','" + license_no.Text.Trim() + "'," + Convert.ToInt32(address_no.Text.Trim()) + ",)";
                cmd = new OracleCommand(query1, con);

                cmd.ExecuteNonQuery();
                Response.Redirect("Customers.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message.ToString() + "');</script>");

            }
        }


    }
}