using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthCare
{
    public partial class AmbulanceBooking : System.Web.UI.Page
    {
        DBManager dm = new DBManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnBookAmbulance_Click(object sender, EventArgs e)
        {
            string cmd = "insert into Ambulance values('" + txtName.Text + "','" + txtFatherName.Text + "','" + txtMobile.Text + "','" + txtAlterMobile.Text + "','" + txtAddress.Text + "','" + txtCity.Text + "','" + txtState.Text + "','" + txtZip.Text + "','" + DateTime.Now.ToString() + "')";
            bool n = dm.ExecuteInsertUpdateOrDelete(cmd);
            if (n == true)
            {
                Response.Write("<script>alert('Ambulance Booked Successfully..');window.location.href='AmbulanceBooking.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('Enquiry Failed')</script>");
            }
        }
    }
}