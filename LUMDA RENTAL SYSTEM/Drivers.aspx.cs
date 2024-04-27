using System;
using System.Data;
using System.IO;
using Oracle.ManagedDataAccess.Client;

namespace LUMDA_RENTAL_SYSTEM
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        static string connectionString = "Data Source= (DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521)) (CONNECT_DATA =    (SERVER = DEDICATED)(SERVICE_NAME = orcl)\r\n    )\r\n  );User Id=system;Password=Fridon8890;";
        OracleConnection con = new OracleConnection(connectionString);
        OracleCommand cmd;
        OracleDataAdapter oda;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from drivers";
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
        
        protected void add_driver_Click(object sender , EventArgs e)
        {
            if (is_Driver_Exist())
            {
                Response.Write("<script>alert('Driver with same id already exists.');</script>");
            }
            else
            {
                addNewDriver();
            }
        }

        private bool is_Driver_Exist()
        {
            try
            {
                con = new OracleConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "select * from drivers where driver_license_no ='" + license_no.Text.Trim() +"'";
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

        private void addNewDriver()
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

                string query1 = "insert into drivers (driver_license_no,first_name,last_name," +
                    "commission,phone_no,availability,address_id,admin_id)"+
                    " values ('" + license_no.Text.Trim() + "','" +
                    f_name.Text.Trim() + "','" + last_name.Text.Trim() + "'," +
                    Convert.ToInt32(commission.Text.Trim()) + ",'" + contact_no.Text.Trim() + "','"
                    + Convert.ToChar(availability.Text.Trim()) + "',"+ Convert.ToInt32(address_id.Text.Trim()) +","+ Convert.ToInt32(admin_id.Text.Trim())+")";
                cmd = new OracleCommand(query1, con);

                cmd.ExecuteNonQuery();
                Response.Redirect("Drivers.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message.ToString() + "');</script>");

            }
        }

        protected void update_driver_Click(object sender, EventArgs e)
        {
            if (is_Driver_Exist())
            {
                updateExistedDriver();
            }
            else
            {
                Response.Write("<script>alert('Driver with this id not exists.');</script>");

            }
        }

        private void updateExistedDriver()
        {
            try
            {
                con = new OracleConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //store img in folder car_inventory_fol
                string file_path = "~/car_inventory_fol/OIP.jpg";
                string file_name = Path.GetFileName(file_upload.FileName);
                file_upload.SaveAs(Server.MapPath("car_inventory_fol/" + file_name));
                file_path = "~/car_inventory_fol/" + file_name;

                string query = "update drivers set first_name='" + f_name.Text.Trim() + "', last_name='" + last_name.Text.Trim() + "'," +
                    "commission=" + Convert.ToChar(commission.Text.Trim()) + ",phone_no='" + contact_no.Text.Trim() + "'," +
                    "availability='" + Convert.ToChar(availability.Text.Trim()) + "',address_id=" + Convert.ToInt32(address_id.Text.Trim())+",admin_id="+Convert.ToInt32(admin_id.Text.Trim())+
                    " where driver_license_no ='" + license_no.Text.Trim() + "'";
                try
                {
                    cmd = new OracleCommand(query, con);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Drivers.aspx");
                }catch(Exception ecx)
                {
                    Response.Write("<script>alert('" + ecx.Message + "');</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}