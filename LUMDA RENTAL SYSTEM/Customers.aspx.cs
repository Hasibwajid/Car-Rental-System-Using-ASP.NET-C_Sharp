using System;
using System.Data;
using Oracle.ManagedDataAccess.Client;

namespace LUMDA_RENTAL_SYSTEM
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        static string connectionString = "Data Source= (DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521)) (CONNECT_DATA =    (SERVER = DEDICATED)(SERVICE_NAME = orcl)\r\n    )\r\n  );User Id=system;Password=Fridon8890;";
        OracleConnection con = new OracleConnection(connectionString);
        OracleCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from customers";
                OracleDataAdapter oda = new OracleDataAdapter(query, con);
                DataSet ds = new DataSet();
                oda.Fill(ds);
                gridView1.DataSource = ds;
                gridView1.DataBind();



            }
            catch (Exception ex)
            {
                f_name.Text = ex.ToString();
            }
        }

        protected void disable_customer_account_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string cus_query = "delete from customers where customer_id = " + Convert.ToInt32(id.Text.Trim()) + "";
                cmd = new OracleCommand(cus_query, con);
                cmd.ExecuteNonQuery();
                gridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + ");</script>");
            }
        }

        protected void search_customer_by_id_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from customers where customer_id ="+Convert.ToInt32(id.Text.Trim());
                OracleDataAdapter oda = new OracleDataAdapter(query, con);
                DataSet ds = new DataSet();
                oda.Fill(ds);
                gridView1.DataSource = ds;
                gridView1.DataBind();

            }
            catch (Exception ex)
            {
                f_name.Text = ex.ToString();
            }
        }
    }
}