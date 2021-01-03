using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace HealthCare
{
    public partial class Login : System.Web.UI.Page
    {
        DBManager dm = new DBManager();
        EncryptionManager em = new EncryptionManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            string cmd, ep;
            ep = em.EncryptMyData(TxtPassword.Text);
            if (TxtPassword.Text == TxtConfPassword.Text)
            {
                cmd = "insert into Registration (PatientName,Mobile,EmailID,Password,Gender,Age,BloodGroup,Address,City,State,ProfilePic,Status,RDT) values('" + TxtName.Text + "','" + TxtMobile.Text + "','" + TxtEmail.Text + "','" + ep + "','N/A','N/A','N/A','N/A','N/A','N/A','N/A','Online','" + DateTime.Now.ToString("dd/MMM/yyyy ddd hh:mm tt") + "')";
                if (dm.ExecuteInsertUpdateOrDelete(cmd) == true)
                {
                    cmd = "insert into Login (UserID,Password,UType) values('" + TxtEmail.Text + "','" + ep + "','Patient')";
                    if (dm.ExecuteInsertUpdateOrDelete(cmd) == true)
                    {
                        Response.Write("<script>alert('You are Register Successfully..');window.location.href='Login.aspx'</script>");
                        //MySmsSender mss = new MySmsSender();
                        //string msg = "Hello " + Name.Text + ",Your Registration Has Been Done.\nRegards:- HealthCare";
                        //mss.SendMySMS(Mobile.Text, msg);
                        TxtName.Text = "";
                        TxtMobile.Text = "";
                        TxtEmail.Text = "";
                        ep = "";
                        TxtConfPassword.Text = "";
                    }
                    else
                    {
                        Response.Write("<script>alert('You are Unable to Register..')</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Confirm Password Is Not Match')</script>");
            }
        }

        protected void BtnLog_Click(object sender, EventArgs e)
        {
            string cmd = "select * from Login where UserID='" + TxtUser.Text + "'and Password='" + em.EncryptMyData(TxtPass.Text) + "' and UType='" + DdlUtypePatient.SelectedValue + "'";
            DataTable dt = dm.ReadBulkData(cmd);
            if (dt.Rows.Count > 0)
            {
                if (DdlUtypePatient.SelectedValue == "Patient")
                {
                    Session["uid"] = TxtUser.Text;
                    Response.Redirect("PatientZone/PatientIndex.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Email Id or Password is not match..')</script>");
                TxtUser.Text = "";
                TxtPass.Text = "";
            }
        }
        protected void BtnLogAdmin_Click(object sender, EventArgs e)
        {
            string cmd = "select * from Login where UserID='" + TxtAdmin.Text + "'and Password='" + em.EncryptMyData(TxtAdminPass.Text) + "' and UType='" + DdlUtypeAdmin.SelectedValue + "'";
            DataTable dt = dm.ReadBulkData(cmd);
            if (dt.Rows.Count > 0)
            {
                if (DdlUtypeAdmin.SelectedValue == "Admin")
                {
                    Session["aid"] = TxtAdmin.Text;
                    Response.Redirect("AdminZone/AdminIndex.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Email Id or Password is not match..')</script>");
                TxtAdmin.Text = "";
                TxtAdminPass.Text = "";
            }
        }
    }
}