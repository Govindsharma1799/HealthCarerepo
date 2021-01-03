using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthCare.PatientZone
{
    public partial class Profile1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void BtnSaveChanges_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GV1.Rows.Count; i++)
            {
                TextBox TxtName = GV1.Rows[i].FindControl("TxtName") as TextBox;
                TextBox TxtMobile = GV1.Rows[i].FindControl("TxtMobile") as TextBox;
                DropDownList DdlGender = GV1.Rows[i].FindControl("DdlGender") as DropDownList;
                TextBox TxtAge = GV1.Rows[i].FindControl("TxtAge") as TextBox;
                DropDownList DdlBloodGroup = GV1.Rows[i].FindControl("DdlBloodGroup") as DropDownList;
                TextBox TxtAdress = GV1.Rows[i].FindControl("TxtAddress") as TextBox;
                TextBox TxtCity = GV1.Rows[i].FindControl("TxtCity") as TextBox;
                TextBox TxtState = GV1.Rows[i].FindControl("TxtState") as TextBox;
                DBManager dm = new DBManager();
                string Go = "update Registration set PatientName='"+TxtName.Text+"',Mobile='"+TxtMobile.Text+"',Gender='"+DdlGender.SelectedValue+"',Age='"+TxtAge.Text+"',BloodGroup='"+DdlBloodGroup.SelectedValue+"',Address='"+TxtAdress.Text+"',City='"+TxtCity.Text+"',State='"+TxtState.Text+"' where EmailID='" + Session["uid"].ToString() + "'";
                bool go = dm.ExecuteInsertUpdateOrDelete(Go);
                if (go == true)
                {
                    Response.Write("<script>alert('Record Updated..');window.location.href='Profile.aspx?email=" + Session["uid"].ToString() + "'</script>");
                }
            }
        }
        protected void LnkChangeProfile_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GV1.Rows.Count; i++)
            {
                LinkButton LnkChangeProfile = GV1.Rows[i].FindControl("LnkChangeProfile") as LinkButton;
                Button BtnSubmit = GV1.Rows[i].FindControl("BtnSubmit") as Button;
                FileUpload FuPic = GV1.Rows[i].FindControl("FuPic") as FileUpload;
                LnkChangeProfile.Attributes.Add("onclick", "document.getElementById('" + FuPic.ClientID + "').click(); return false;");
                FuPic.Attributes.Add("onchange", "document.getElementById('" + BtnSubmit.ClientID + "').click(); return false;");
                //FuPic.Attributes.Add("onchange", "alert('Hello User')");

            }
        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GV1.Rows.Count; i++)
            {
                Label TxtPatientName= GV1.Rows[i].FindControl("PatientName") as Label;
                FileUpload FuPic = GV1.Rows[i].FindControl("FuPic") as FileUpload;
                DBManager dm = new DBManager();
                string fileName = TxtPatientName + FuPic.FileName;
                string Go = "update Registration set ProfilePic='" + fileName + "' where EmailID='" + Session["uid"].ToString() + "'";
                FuPic.SaveAs(Server.MapPath("~/ProfilePic/" + fileName));
                bool go = dm.ExecuteInsertUpdateOrDelete(Go);
                if (go == true)
                {
                    Response.Write("<script>alert('Profile Pic Uploaded..');window.location.href='Profile.aspx?email=" + Session["uid"].ToString() + "'</script>");
                }
            }
        }
    }
}