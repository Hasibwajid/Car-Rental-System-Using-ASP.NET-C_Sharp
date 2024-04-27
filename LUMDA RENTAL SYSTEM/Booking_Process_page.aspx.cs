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
    public partial class WebForm10 : System.Web.UI.Page
    {
        static string connectionString = "Data Source=(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = DESKTOP-Q9VDLV0)(PORT = 1521))(CONNECT_DATA =(SERVER = DEDICATED)(SERVICE_NAME = ORCL)));User Id=system;Password=Mnbvcxz@1;";
        OracleConnection con = new OracleConnection(connectionString);
        OracleCommand cmd;
        OracleDataAdapter da;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string cus_query = "select last_name, credit_card_no from customers where customer_id =" + Convert.ToInt32(Session["user_id"] + "");
                cmd = new OracleCommand(cus_query, con);
                OracleDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        customer_id.Text = Session["user_id"].ToString();
                        f_name.Text = Session["f_name"].ToString();
                        l_name.Text = dr["last_name"].ToString();
                        credit_card_no.Text = dr["credit_card_no"].ToString();
                    }
                }

                //HERE ANOTHER REQUEST

                string query1 = "select  car_id,car_brand,car_model,price_per_day,commission,cars.Driver_license_no from cars join  drivers on cars.Driver_license_no = drivers.driver_license_no where car_id =" + Convert.ToInt32(Session["IdToContinue"]);
                cmd = new OracleCommand(query1, con);
                OracleDataReader dr1 = cmd.ExecuteReader();

                if (dr1.HasRows)
                {
                    while (dr1.Read())
                    {

                        carID_top.Text = dr1["car_id"].ToString();
                        brand_top.Text = dr1["car_brand"].ToString();
                        Model_top.Text = dr1["car_model"].ToString();
                        price_per_day.Text = dr1["price_per_day"].ToString();
                        drive_commission.Text = dr1["commission"].ToString();
                        d_license_no.Text = dr1["Driver_license_no"].ToString();
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script> alert('" + ex.Message + "');</script>");

            }
            
        }

        protected void with_driver_TextChanged(object sender,EventArgs e)
        {
            calculate_Total_amount();
            if(with_driver.Text == "Y")
            {
                drive_commission.Visible = true;
                d_license_no.Visible = true;
            }
            else
            {
                drive_commission.Visible = false;
                d_license_no.Visible = true;
            }

        }
        protected void date_Text_changed(object sender, EventArgs e)
        {
            calculate_no_of_days();
            calculate_Total_amount();
        }

        private void calculate_no_of_days()
        {
            if (booking_date.Text == string.Empty) return;
            DateTime dt;
            DateTime.TryParse(booking_date.Text, out dt);
            if (return_date.Text == string.Empty) return;
            DateTime dt2;
            DateTime.TryParse(return_date.Text, out dt2);

            if (dt == DateTime.MinValue && dt2 == DateTime.MinValue || dt.Year > dt2.Year || dt.Month > dt2.Month || dt.Day > dt2.Day)
            {
                Response.Write("<script> alert('return date should be grater than booking');</script>");
                booking_date.Text = string.Empty;
                return_date.Text = string.Empty;
                return;
            }
            TimeSpan daydif = (dt2 - dt);
            double dayd = daydif.TotalDays;

            no_of_days.Text = dayd.ToString();
        }

        protected void Book_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert('" + Convert.ToDateTime(booking_date.Text).Date + "');</script>");

            try
            {
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string post_bookingQ = "insert into booking (IS_WITH_DRIVER,BOOK_DATE,RETURN_DATE,FROM_LOCATION,TO_LOCATION,CAR_ID," +
                    "CUSTOMER_ID,DRIVER_LICENSE_NO,STATUS) values('"+Convert.ToChar(with_driver.Text)+"'," +
                    "TO_DATE('" + booking_date.Text+ "','YYYY/MM/DD'), TO_DATE('" + return_date.Text+ "','YYYY/MM/DD')," + Convert.ToInt32(source_location.Text)+"," +
                    ""+Convert .ToInt32(dest_location.Text)+ "," + Convert.ToInt32(carID_top.Text) + "," +
                    "" + Convert.ToInt32(customer_id.Text) + ",'" + d_license_no.Text + "','pending')";
                cmd = new OracleCommand(post_bookingQ, con);
                cmd.ExecuteNonQuery();

                Response.Redirect("Rentals_page.aspx");
            }
            catch(Exception ex)
            {
                Response.Write("<script> alert('"+ex.Message+"');</script>");

            }
        }

        protected void Cancle_Click(object sender, EventArgs e)
        {

        }

        protected void price_per_day_TextChanged(object sender, EventArgs e)
        {
            calculate_Total_amount();
            
        }

        private void calculate_Total_amount()
        {
            if (no_of_days.Text != string.Empty && price_per_day.Text !=string.Empty && Convert.ToInt32(price_per_day.Text) > 0)
            {
                if (with_driver.Text == "Y")
                {
                    total_amount.Text = ((Convert.ToInt32(no_of_days.Text) * Convert.ToInt32(price_per_day.Text)) + Convert.ToInt32(drive_commission.Text)).ToString();
                }
                else
                {
                    total_amount.Text = ((Convert.ToInt32(no_of_days.Text) * Convert.ToInt32(price_per_day.Text))).ToString();
                }
            }
        }
    }
}