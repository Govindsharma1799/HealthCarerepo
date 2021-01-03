using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace HealthCare.PatientZone
{
    public partial class Appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=JARVIS;Initial Catalog=HealthCareDB;Integrated Security=True");
            con.Open();
            string qry = "select max(SerialNo) from Appointment";
            SqlCommand cmd = new SqlCommand(qry,con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int cid = Convert.ToInt32(dr[0]);
            cid++;
            TxtAppointmentID.Text ="HC2020" +cid.ToString();
        }

        protected void BtnAppointment_Click(object sender, EventArgs e)
        {
            DBManager dm = new DBManager();
            string Go = "insert into Appointment(PatientName,FatherName,EmailID,Mobile,Age,PatientType,Department,BloodGroup,ADT) values('" + TxtPatientName.Text + "','" + TxtFatherName.Text + "','" + Session["uid"].ToString() + "','" + TxtMobile.Text + "','" + TxtAge.Text + "','" + DdlPatientType.SelectedValue + "','" + DdlDepartment.SelectedValue + "','" + DdlBloodGroup.SelectedValue + "','" + DateTime.Now.ToString("dd/MMM/yyyy ddd hh:mm tt") + "')";
            bool go = dm.ExecuteInsertUpdateOrDelete(Go);
            if (go == true)
            {
                if (DdlDepartment.SelectedValue == "General")
                {
                    string cmd = "insert into GeneralDepartment values('" + TxtPatientName.Text + "','" + TxtFatherName.Text + "','" + TxtMobile.Text + "','" + TxtAge.Text + "','" + DdlDepartment.SelectedValue + "','" + DdlPatientType.SelectedValue + "','" + DdlBloodGroup.SelectedValue + "','" + DateTime.Now.ToString("dd/MMM/yyyy ddd hh:mm tt") + "')";
                    bool ress = dm.ExecuteInsertUpdateOrDelete(cmd);
                    if (ress == true)
                    {
                        Response.Write("<script>alert('Appointment Booked in General Department');window.location.href='PrintAppointment.aspx?email=" + Session["uid"].ToString() + "'</script>");
                        //string g = "select SerialNo from General where PName='" + Name.Text + "'";
                        //MySmsSender mss = new MySmsSender();
                        //string msg = "Hello " + Name.Text + ", Your Appointment Has Been Done In General Zone.Your Registration No. Is " + g + ".\nRegards:- HealthCare";
                        //mss.SendMySMS(Mobile.Text, msg);
                        TxtPatientName.Text = "";
                        TxtFatherName.Text = "";
                        TxtAge.Text = "";
                        TxtMobile.Text = "";
                        DdlPatientType.SelectedValue = "Select";
                        DdlDepartment.SelectedValue = "Select";
                        DdlBloodGroup.SelectedValue = "Select";
                    }
                    else
                    {
                        Response.Write("<script>alert('Appointment Booking Failed')</script>");
                    }
                }
                if (DdlDepartment.SelectedValue == "ENT")
                {
                    string cmd = "insert into ENTDepartment(PatientName,FatherName,Mobile,Age,PatientType,Department,BloodGroup,EADT) values('" + TxtPatientName.Text + "','" + TxtFatherName.Text + "','" + TxtMobile.Text + "','" + TxtAge.Text + "','" + DdlPatientType.SelectedValue + "','" + DdlDepartment.SelectedValue + "','" + DdlBloodGroup.SelectedValue + "','" + DateTime.Now.ToString("dd/MMM/yyyy ddd hh:mm tt") + "')";
                    bool ress = dm.ExecuteInsertUpdateOrDelete(cmd);
                    if (ress == true)
                    {
                        Response.Write("<script>alert('Appointment Booked in ENT Department');window.location.href='PrintAppointment.aspx?email=" + Session["uid"].ToString() + "'</script>");
                        //string g = "select SerialNo from Eye where PName='" + Name.Text + "'";
                        //MySmsSender mss = new MySmsSender();
                        //string msg = "Hello " + Name.Text + ", Your Appointment Has Been Done In Eye Zone.Your Registration No. Is " + g + ".\nRegards:- HealthCare";
                        //mss.SendMySMS(Mobile.Text, msg);
                        TxtPatientName.Text = "";
                        TxtFatherName.Text = "";
                        TxtAge.Text = "";
                        TxtMobile.Text = "";
                        DdlPatientType.SelectedValue = "Select";
                        DdlDepartment.SelectedValue = "Select";
                        DdlBloodGroup.SelectedValue = "Select";
                    }
                    else
                    {
                        Response.Write("<script>alert('Appointment Booking Failed')</script>");
                    }
                }
                if (DdlDepartment.SelectedValue == "Heart")
                {
                    string cmd = "insert into HeartDepartment(PatientName,FatherName,Mobile,Age,PatientType,Department,BloodGroup,HADT) values('" + TxtPatientName.Text + "','" + TxtFatherName.Text + "','" + TxtMobile.Text + "','" + TxtAge.Text + "','" + DdlPatientType.SelectedValue + "','" + DdlDepartment.SelectedValue + "','" + DdlBloodGroup.SelectedValue + "','" + DateTime.Now.ToString("dd/MMM/yyyy ddd hh:mm tt") + "')";
                    bool ress = dm.ExecuteInsertUpdateOrDelete(cmd);
                    if (ress == true)
                    {
                        Response.Write("<script>alert('Appointment Booked in Heart Department');window.location.href='PrintAppointment.aspx?email=" + Session["uid"].ToString() + "'</script>");
                        //string g = "select SerialNo from Heart where PName='" + Name.Text + "'";
                        //MySmsSender mss = new MySmsSender();
                        //string msg = "Hello " + Name.Text + ", Your Appointment Has Been Done In Heart Zone.Your Registration No. Is " + g + ".\nRegards:- HealthCare";
                        //mss.SendMySMS(Mobile.Text, msg);
                        TxtPatientName.Text = "";
                        TxtFatherName.Text = "";
                        TxtAge.Text = "";
                        TxtMobile.Text = "";
                        DdlPatientType.SelectedValue = "Select";
                        DdlDepartment.SelectedValue = "Select";
                        DdlBloodGroup.SelectedValue = "Select";
                    }
                    else
                    {
                        Response.Write("<script>alert('Appointment Booking Failed')</script>");
                    }
                }
                if (DdlDepartment.SelectedValue == "Ortho")
                {
                    string cmd = "insert into OrthoDepartment(PatientName,FatherName,Mobile,Age,PatientType,Department,BloodGroup,OADT) values('" + TxtPatientName.Text + "','" + TxtFatherName.Text + "','" + TxtMobile.Text + "','" + TxtAge.Text + "','" + DdlPatientType.SelectedValue + "','" + DdlDepartment.SelectedValue + "','" + DdlBloodGroup.SelectedValue + "','" + DateTime.Now.ToString("dd/MMM/yyyy ddd hh:mm tt") + "')";
                    bool ress = dm.ExecuteInsertUpdateOrDelete(cmd);
                    if (ress == true)
                    {
                        Response.Write("<script>alert('Appointment Booked in Ortho Department');window.location.href='PrintAppointment.aspx?email=" + Session["uid"].ToString() + "'</script>");
                        //string g = "select SerialNo from Ortho where PName='" + Name.Text + "'";
                        //MySmsSender mss = new MySmsSender();
                        //string msg = "Hello " + Name.Text + ", Your Appointment Has Been Done In Ortho Zone.Your Registration No. Is " + g + ".\nRegards:- HealthCare";
                        //mss.SendMySMS(Mobile.Text, msg);
                        TxtPatientName.Text = "";
                        TxtFatherName.Text = "";
                        TxtAge.Text = "";
                        TxtMobile.Text = "";
                        DdlPatientType.SelectedValue = "Select";
                        DdlDepartment.SelectedValue = "Select";
                        DdlBloodGroup.SelectedValue = "Select";
                    }
                    else
                    {
                        Response.Write("<script>alert('Appointment Booking Failed')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Not in Department')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Appointment Booking Failed')</script>");
            }
        }
    }
}