using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

namespace LUMDA_RENTAL_SYSTEM
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        static string connectionString = "Data Source= (DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521)) (CONNECT_DATA =    (SERVER = DEDICATED)(SERVICE_NAME = orcl)\r\n    )\r\n  );User Id=system;Password=Fridon8890;";
        OracleConnection con = new OracleConnection(connectionString);
        OracleCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from cars";
                OracleDataAdapter oda = new OracleDataAdapter(query, con);
                DataSet ds = new DataSet();
                oda.Fill(ds);
                gridView1.DataSource = ds;
                gridView1.DataBind();


            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }
        }
       protected void continue_Click(Object sender, EventArgs e)
        {
            if ( Session["role"] == null ||  !Session["role"].Equals("user") )
            {
                Response.Write("<script> alert('Please Login As User To Process Booking');</script>");
            }
            else
            {
                int rowIn = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                int idToContinue = Convert.ToInt32(gridView1.Rows[rowIn].Cells[0].Text.Trim());
                Session["IdToContinue"] = idToContinue;
                Response.Redirect("Booking_process_page.aspx");

            }

        }


    }
}