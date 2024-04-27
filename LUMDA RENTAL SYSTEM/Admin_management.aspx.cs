using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;
using System.IO;

namespace LUMDA_RENTAL_SYSTEM
{
    public partial class WebForm8 : System.Web.UI.Page
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
                string query = "select * from admins";
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
        
        protected void add_Click(Object sender, EventArgs e)
        {
            if (is_Admin_Exist())
            {
                Response.Write("<script>alert('Admin with same id already exists.');</script>");
            }
            else
            {
                addNewAdmin();
            }
        }

        private bool is_Admin_Exist()
        {
            try
            {
                con = new OracleConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string query = "select * from admins where admin_id =" +Convert.ToInt32( id.Text.Trim()) ;
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
                Response.Write("<script>alert('ADMUN EX " + ex.Message.ToString() + "');</script>");
                return false;
            }
        }

        private void addNewAdmin()
        {
            try
            {
                //store img in folder car_inventory_fol
                string file_path = "~/car_inventory_fol/OIP.jpg";
                string file_name = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("car_inventory_fol/" + file_name));
                file_path = "~/car_inventory_fol/" + file_name;


                con = new OracleConnection(connectionString);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string query1 = "insert into admins " +
                    " values (" + Convert.ToInt32(id.Text.Trim()) + ",'" +
                    f_name.Text.Trim() + "','" + last_name.Text.Trim() + "','" +
                    gender.Text.Trim() + "'," + Convert.ToInt32(age.Text.Trim()) + ",'"
                    + contact_no.Text.Trim() + "','" + email.Text.Trim() + "','" + password.Text.Trim() + "','" +
                    file_path + "')";
                cmd = new OracleCommand(query1, con);

                cmd.ExecuteNonQuery();
                Response.Redirect("Admin_management.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('INSRR " + ex.Message.ToString() + "');</script>");

            }
        }

        protected void update_Click(object sender, EventArgs e)
        {
            if (is_Admin_Exist())
            {
                updateExistedAdmin();
            }
            else
            {
                Response.Write("<script>alert('Admin with this id not exists.');</script>");

            }
        }

        private void updateExistedAdmin()
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
                string file_name = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("car_inventory_fol/" + file_name));
                file_path = "~/car_inventory_fol/" + file_name;

                string query = "update admins set first_name='" + f_name.Text.Trim() + "', last_name='" + last_name.Text.Trim() + "'," +
                    "gender='" + gender.Text.Trim() + "',age=" +Convert.ToInt32(age.Text.Trim()) + ","+ 
                    "',phone='" + contact_no.Text.Trim() + "'," +
                    "email='" + email.Text.Trim() + "',password=" + password.Text.Trim() +
                    "',IMG='"+file_path +"' " +
                    "where admin_id ="+Convert.ToInt32(id.Text.Trim());

                cmd = new OracleCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Redirect("Admin_Management.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(UPP '" + ex.Message.ToString() + "');</script>");
            }
        }

        
    }
}