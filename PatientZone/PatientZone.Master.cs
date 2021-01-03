using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace HealthCare.PatientZone
{
    public partial class PatientZone : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] != null)
            {
                DBManager dm = new DBManager();
                string cmd = "select PatientName,ProfilePic from Registration where EmailId='" + Session["uid"].ToString() + "'";
                DataTable dt = dm.ReadBulkData(cmd);
                if (dt.Rows.Count > 0)
                {
                    LblUserName1.Text = dt.Rows[0][0].ToString();
                    if (dt.Rows[0][1].ToString() != "N/A")
                    {
                        UserPic1.Visible = true;
                    }
                    UserPic1.ImageUrl = UserPic2.ImageUrl = "../ProfilePic/" + dt.Rows[0][1].ToString();
                }
            }
            else
            {
                Response.Redirect("../Login.aspx");
            }
        }
    }
}