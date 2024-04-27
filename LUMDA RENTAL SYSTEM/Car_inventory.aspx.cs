using System;
using System.Data;
using System.IO;
using Oracle.ManagedDataAccess.Client;

namespace LUMDA_RENTAL_SYSTEM
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        static string connectionString = "Data Source= (DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521)) (CONNECT_DATA =    (SERVER = DEDICATED)(SERVICE_NAME = orcl)\r\n    )\r\n  );User Id=system;Password=Fridon8890;";
        OracleConnection con = new OracleConnection(connectionString);
        OracleCommand cmd;
        OracleDataAdapter oda;
        DataSet ds;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from cars";
                oda = new OracleDataAdapter(query, con);
                ds = new DataSet();
                oda.Fill(ds);
                gridView1.DataSource = ds;
                gridView1.DataBind();


            }
            catch (Exception ex)
            {
                car_brand.Text = ex.ToString();
            }
        }


        protected void add_Click(object sender, EventArgs e)
        {
            if (is_Car_Exist())
            {
                Response.Write("<script>alert('Car with same id already exists.');</script>");
            }
            else
            {
                addNewCar();
            }
        }


        private bool is_Car_Exist()
        {
            try
            {
                con = new OracleConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "select * from cars where car_id =" + car_id.Text.Trim() + "";
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

        private void addNewCar()
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
                
                //string query = "insert into cars (car_id, car_model, " +
                //    "car_color,availability,plate_no,category_id," +
                //    "address_id,driver_license_no,car_img)" +
                //    " values (:car_id, :car_model,:car_color,:availability," +
                //    ":plate_no,:category_id,:address_id,:driver_license_no," +
                //    ":car_img)";
                string query1 = "insert into cars (car_id, car_model, car_brand," +
                    "car_color,availability,plate_no,price_per_day," +
                    "address_id,driver_license_no,car_img)" +
                    " values ("+Convert.ToInt32(car_id.Text.Trim())+",'"+
                    car_model.Text.Trim()+"','"+car_brand.Text.Trim()+"','"+ 
                    car_color.Text.Trim()+"','"+Convert.ToChar(car_availability.Text.Trim())+"','"
                    +plate_no.Text.Trim()+"',"+Convert.ToInt32(price_per_day.Text.Trim())+","
                    +Convert.ToInt32(address_id.Text.Trim())+",'"+d_license_no.Text.Trim()
                    +"','"+file_path+"')";
                cmd = new OracleCommand(query1, con);
                
                cmd.ExecuteNonQuery();
                Response.Redirect("Car_inventory.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message.ToString() + "');</script>");

            }
        }
        protected void update_Click(object sender, EventArgs e)
        {
            if (is_Car_Exist())
            {
                updateExistedCar();
            }
            else
            {
                Response.Write("<script>alert('Car with this id not exists.');</script>");

            }
        }

        private void updateExistedCar()
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

                string query = "update cars set car_model='" + car_model.Text.Trim() + "', car_brand='" + car_brand.Text.Trim() + "'," +
                    "car_color='" + car_color.Text.Trim() + "',availability='" + Convert.ToChar(car_availability.Text.Trim()) + "'," +
                    "plate_no='" + plate_no.Text.Trim() + "',price_per_day=" + Convert.ToInt32(price_per_day.Text.Trim()) + "," +
                    "address_id=" + Convert.ToInt32(address_id.Text.Trim()) + "," +
                    "driver_license_no='" + d_license_no.Text.Trim() + "',car_img='" + file_path + "' where car_id =" + Convert.ToInt32(car_id.Text.Trim()) + "";

                cmd = new OracleCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("Car_inventory.aspx");
            }catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message.ToString() + "');</script>");
            }
        }

    }

    
}