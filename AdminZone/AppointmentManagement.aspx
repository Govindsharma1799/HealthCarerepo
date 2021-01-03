<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AppointmentManagement.aspx.cs" Inherits="HealthCare.AdminZone.AppointmentManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-4">
        <%--Title--%>
        <h2 class="h2 d-none d-sm-block">Appointment Dashboard</h2>
        <%--<p class="lead d-none d-sm-block">Plus off-canvas sidebar, based on Bootstrap v4</p>--%>
        <div class="shadow p-3 bg-white rounded">
            <div class="table-responsive">
                <asp:GridView ID="GV1" CssClass="w-100" runat="server" PageSize="7" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="SerialNo" DataSourceID="SqlDataSource" CellPadding="8" ForeColor="#333333" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="SerialNo" HeaderText="SerialNo" InsertVisible="False" ReadOnly="True" SortExpression="SerialNo" />
                        <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
                        <asp:BoundField DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="PatientType" HeaderText="PatientType" SortExpression="PatientType" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                        <asp:BoundField DataField="ReportDesc" HeaderText="ReportDesc" SortExpression="ReportDesc" />
                        <asp:BoundField DataField="ReportFile" HeaderText="ReportFile" SortExpression="ReportFile" />
                        <asp:HyperLinkField DataNavigateUrlFields="ReportFile" DataNavigateUrlFormatString="../UploadedFiles/{0}" Target="_blank" HeaderText="Download Report" Text="Download" ControlStyle-CssClass="btn btn-outline-info"/>
                        <asp:BoundField DataField="ADT" HeaderText="ADT" SortExpression="ADT" />
                        <asp:CommandField ButtonType="Button" HeaderText="Command" ShowDeleteButton="True" ShowHeader="True" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" CssClass="p-0" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Wrap="false" Font-Bold="True" ForeColor="White" CssClass="text-center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" Wrap="false" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HealthcareConnectionString %>" SelectCommand="SELECT * FROM [Appointment]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
