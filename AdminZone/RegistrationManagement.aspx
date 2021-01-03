<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminPanel.Master" AutoEventWireup="true" CodeBehind="RegistrationManagement.aspx.cs" Inherits="HealthCare.AdminZone.RegistrationManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-4">
        <%--Title--%>
        <h2 class="h2 d-none d-sm-block">Registration Dashboard</h2>
        <%--<p class="lead d-none d-sm-block">Plus off-canvas sidebar, based on Bootstrap v4</p>--%>
        <div class="shadow p-3 bg-white rounded">
            <div class="table-responsive">
                <asp:GridView runat="server" PageSize="7" AllowPaging="True" AutoGenerateColumns="False" CellPadding="8" DataKeyNames="EmailID" DataSourceID="SqlDataSource" ForeColor="#333333" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="SerialNo" HeaderText="SerialNo" InsertVisible="False" ReadOnly="True" SortExpression="SerialNo" />
                        <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" ReadOnly="True" SortExpression="EmailID" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:ImageField DataImageUrlField="ProfilePIc" DataImageUrlFormatString="~/ProfilePic/{0}" HeaderText="Profile Pic" ControlStyle-BackColor="#EFF3FB">
                            <ControlStyle CssClass="rounded-circle img-thumbnail border-info" Height="60px" Width="60px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="RDT" HeaderText="RDT" SortExpression="RDT" />
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
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HealthcareConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
