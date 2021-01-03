using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthCare.AdminZone
{
    public partial class PostAnswer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtQues.Text = Request.QueryString["Question"];
        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            DBManager dm = new DBManager();
            string cm = "insert into Answer values('" + null + "','" + txtPostAnswer.Text + "','" + Request.QueryString["QuesID"] + "','" + DateTime.Now.ToString("dd/MMM/yyyy ddd hh:mm tt") + "')";
            bool b = dm.ExecuteInsertUpdateOrDelete(cm);
            string msg = b == true ? "Answer Posted Successfully." : "Unable To Post Answer";
            Response.Write("<script>alert('" + msg + "');window.location.href='ConsultPanel.aspx';</Script>");
        }
    }
}