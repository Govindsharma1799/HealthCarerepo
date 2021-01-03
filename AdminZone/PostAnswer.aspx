<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminPanel.Master" AutoEventWireup="true" CodeBehind="PostAnswer.aspx.cs" Inherits="HealthCare.AdminZone.PostAnswer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .w-95{
            width:95%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-4">
        Title
        <h2 class="h2 d-none d-sm-block">Consult Panel</h2>
        <%--<p class="lead d-none d-sm-block">Plus off-canvas sidebar, based on Bootstrap v4</p>--%>
        <div class="shadow p-3 bg-white rounded">
            <div class="container-fluid">
                <img src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg" alt="user" width="50" class="bg-info img-thumbnail rounded-circle">
                <div class="Chat p-2 float-right w-95 mb-4">
                    <div class="link">
                        <asp:Label ID="txtQues" runat="server" CssClass="h5 bg-light rounded p-2 mb-2 " />
                    </div>
                    <%--<h6 class="small mt-3">
                        <asp:Label runat="server"/>
                    </h6>--%>
                </div>
                
                <form>
                    <div class="form-group">
                        <label for="txtPostAnswer" class="h6">Post Answer</label>
                        <asp:TextBox ID="txtPostAnswer" runat="server" class="form-control" placeholder="Answer.." Rows="5" TextMode="MultiLine" />
                    </div>
                    <asp:Button Text="Post Answer" ID="btnPost" runat="server" class="btn btn-outline-info" OnClick="btnPost_Click" />
                    <asp:HyperLink NavigateUrl="~/AdminZone/ConsultPanel.aspx" runat="server" Text="Back" CssClass="btn btn-outline-success" />
                </form>
            </div>
        </div>
    </div>
</asp:Content>
