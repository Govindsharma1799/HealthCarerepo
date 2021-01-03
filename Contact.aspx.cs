using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthCare
{
    public partial class Contact : System.Web.UI.Page
    {
        DBManager dm = new DBManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string cmd = "insert into ContactUs(Name,EmailID,Mobile,Address,Msg,EDT) values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtMobile.Text + "','" + txtAddress.Text + "','" + txtMsg.Text + "','" + DateTime.Now.ToString() + "')";
            bool n = dm.ExecuteInsertUpdateOrDelete(cmd);
            if (n == true)
            {
                Response.Write("<script>alert('Your Query Submitted..');window.location.href='Contact.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('Enquiry Failed')</script>");
            }
        }
    }
}