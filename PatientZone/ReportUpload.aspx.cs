using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthCare.PatientZone
{
    public partial class ReportUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnReportUpload_Click(object sender, EventArgs e)
        {
            string AppointmentID=TxtAppointmentID.Text.Substring(TxtAppointmentID.Text.Length - 2, 2);
            DBManager dm = new DBManager();
            string cmd = "select SerialNo,PatientName from Appointment where EmailID='" + Session["uid"].ToString() + "'";
            if (FuFile.HasFile == true)
            {
                FuFile.SaveAs(Server.MapPath("../UploadedFiles/" + FuFile.FileName));
                string query = "update Appointment Set ReportDesc='" + TxtDescription.Text + "',ReportFile='" + FuFile.FileName + "' where PatientName='" + TxtPatientName.Text + "' and SerialNo='" + AppointmentID + "' and EmailID='" + Session["uid"].ToString() + "'";
                bool res = dm.ExecuteInsertUpdateOrDelete(query);
                if (res == true)
                {
                    Response.Write("<script>alert('Uploading Done');window.location.href='ReportUpload.aspx?email=" + Session["uid"].ToString() + "'</script>");
                }
                else
                {
                    Response.Write("<script>alert('Uploading Failed')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please select a file')</script>");
            }
        }
    }
}