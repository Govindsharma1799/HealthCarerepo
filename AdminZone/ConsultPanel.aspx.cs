using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthCare.AdminZone
{
    public partial class ConsultPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void GV1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GV1, "select$" + e.Row.RowIndex);
        //    }
        //}

        //int rowIndex;
        //protected void GV1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    rowIndex= GV1.SelectedRow.RowIndex;
        //    //GridViewRow gr=GV1.SelectedRow;
        //    //lbl.Text = gr.Cells[0].Text;
        //    //Response.Write("<script>alert('" + GV1.SelectedRow.Cells[0].Text + "')</script>");
        //}

        
        //protected void btnPost_Click(object sender, EventArgs e)
        //{
        //    for (int i = 0; i < GV1.Rows.Count; i++)
        //    {
        //        TextBox txtPost = GV1.Rows[i].FindControl("txtPost") as TextBox;
        //        Label lblPost = GV1.Rows[i].FindControl("lblPost") as Label;
        //        DBManager dm = new DBManager();
        //        //int QuesID = rowIndex + 1;
        //        //string cm = "insert into Answer values('" + Session["aid"] + "','" + txtPost.Text + "','" + lblPost.Text + "','" + DateTime.Now + "')";
        //        string cm = "insert into Answer (EmailID,Answer,QuesID,ADT) values('" + null + "','" + txtPost.Text + "','" + txtPost.Text + "','" + DateTime.Now.ToString() + "')";
        //        bool b = dm.ExecuteInsertUpdateOrDelete(cm);
        //        string msg = b == true ? "Answer Posted Successfully." : "Unable To Post Answer";
        //        Response.Write("<script>alert('" + msg + "');window.location.href='ConsultPanel.aspx';</script>");
        //    }
        //}
    }
}