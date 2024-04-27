using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Oracle.ManagedDataAccess.Client;
namespace LUMDA_RENTAL_SYSTEM
{
    public partial class WebForm12 : System.Web.UI.Page
    {

        static string connectionString = "Data Source= (DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521)) (CONNECT_DATA =    (SERVER = DEDICATED)(SERVICE_NAME = orcl)\r\n    )\r\n  );User Id=system;Password=Fridon8890;";
        OracleConnection con = new OracleConnection(connectionString);
        OracleCommand cmd;
        OracleDataAdapter oda;
        DataSet ds;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null || !Session["role"].Equals("user")  )
            {
                if_user_not_logged_in.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                try
                {
                    string query = "select * from booking where customer_id ="+Convert.ToInt32(Session["user_id"])+"";
                    oda = new OracleDataAdapter(query, con);
                    ds = new DataSet();
                    oda.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}