using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthCare.PatientZone
{
    public partial class PrintAppointment : System.Web.UI.Page
    {
        DBManager dm = new DBManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cmd = "select * from Appointment where EmailID='" + Session["uid"].ToString() + "'";
            System.Data.DataTable dt = dm.ReadBulkData(cmd);
            if (dt.Rows.Count > 0)
            {
                LblPatientName.Text = dt.Rows[0][1].ToString();
                LblFatherName.Text = dt.Rows[0][2].ToString();
                LblMobile.Text=dt.Rows[0][4].ToString(); ;
                LblAge.Text = dt.Rows[0][5].ToString();
                LblDepartment.Text = dt.Rows[0][7].ToString();
                LblPatientType.Text = dt.Rows[0][6].ToString();
                LblBlood.Text = dt.Rows[0][8].ToString();
                LblAppointment.Text = dt.Rows[0][11].ToString();
            }
            else
            {
                Response.Write("<script>alert('Data Not Found')</script>");
            }
        }
    }
}