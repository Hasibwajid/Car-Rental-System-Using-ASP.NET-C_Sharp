using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LUMDA_RENTAL_SYSTEM
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] != null)
                {
                    if (Session["role"].Equals(""))
                    {
                        btn_logout.Visible = false;
                        btn_log_in.Visible = true;
                        role.Visible = false;

                        btn_admin.Visible = true;
                        btn_cars.Visible = false;
                        btn_customer.Visible = false;
                        btn_drivers.Visible = false;
                        btn_rentals.Visible = false;
                        btn_returns.Visible = false;
                        btn_admins_manage.Visible = false;
                    }
                    else if (Session["role"].Equals("user"))
                    {
                        btn_logout.Visible = true;
                        btn_log_in.Visible = false;
                        role.Visible = true;
                        role.Text = "Hello " + Session["f_name"].ToString();



                        btn_admin.Visible = false;
                        btn_cars.Visible = false;
                        btn_customer.Visible = false;
                        btn_drivers.Visible = false;
                        btn_rentals.Visible = false;
                        btn_returns.Visible = false;
                        btn_admins_manage.Visible = false;
                    }
                    else if (Session["role"].Equals("admin"))
                    {
                        btn_logout.Visible = true;
                        btn_log_in.Visible = false;
                        role.Visible = true;
                        role.Text = "Hello Admin";



                        btn_admin.Visible = false;
                        btn_cars.Visible = true;
                        btn_customer.Visible = true;
                        btn_drivers.Visible = true;
                        btn_rentals.Visible = true;
                        btn_returns.Visible = true;
                        btn_admins_manage.Visible = true;
                    }

                }

            }
            catch (Exception ex)
            {

            }
        }

      
        protected void Logout_Click(object sender, EventArgs e)
        {
            
            Session["role"] = "";
            Session["f_name"] = "";
            Response.Redirect("Home.aspx");
        }

        protected void btn_admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminlogin.aspx");
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("userLogin.aspx");
        }

        protected void btn_customer_management_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customers.aspx");
        }
        protected void btn_admins_management_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_management.aspx");
        }
        protected void btn_car_inverntory_management_Click(object sender, EventArgs e)
        {
            Response.Redirect("Car_inventory.aspx");
        }
        protected void btn_drivers_management_Click(object sender, EventArgs e)
        {
            Response.Redirect("Drivers.aspx");
        }
        protected void btn_rental_management_Click(object sender, EventArgs e)
        {
            Response.Redirect("Rental_Management.aspx");
        }

    }
}