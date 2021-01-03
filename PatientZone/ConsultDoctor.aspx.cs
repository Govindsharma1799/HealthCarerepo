using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthCare.PatientZone
{
    public partial class ConsultDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            DBManager dm = new DBManager();
            string cmd = "Insert into Question values('" + Session["uid"] + "','" + TxtConsultQues.Text + "','" + DateTime.Now.ToString("dd/MMM/yyyy ddd hh:mm tt") + "')";
            bool b = dm.ExecuteInsertUpdateOrDelete(cmd);
            string msg = b == true ? "Question Posted Successfully." : "Unable To Post Question";
            TxtConsultQues.Text = "";
            GV.DataBind();
            //Response.Write("<script>alert('" + msg + "');window.location.href='ConsultDoctor.aspx?email=" + Session["uid"].ToString() + "'</script>");
        }
    }
}