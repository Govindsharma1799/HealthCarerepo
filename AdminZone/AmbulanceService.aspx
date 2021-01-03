<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AmbulanceService.aspx.cs" Inherits="HealthCare.AdminZone.AmbulanceService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-4">
        <%--Title--%>
        <h2 class="h2 d-none d-sm-block">Ambulance Service Dashboard</h2>
        <%--<p class="lead d-none d-sm-block">Plus off-canvas sidebar, based on Bootstrap v4</p>--%>
        <div class="shadow p-3 bg-white rounded">
            <div class="table-responsive">
                <asp:GridView runat="server" CssClass="w-100" AutoGenerateColumns="False" DataKeyNames="SerialNo" CellPadding="8" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="SerialNo" HeaderText="SerialNo" InsertVisible="False" ReadOnly="True" SortExpression="SerialNo" />
                        <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
                        <asp:BoundField DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        <asp:BoundField DataField="AlterMobile" HeaderText="AlterMobile" SortExpression="AlterMobile" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                        <asp:BoundField DataField="ABDT" HeaderText="ABDT" SortExpression="ABDT" />
                        <asp:CommandField ButtonType="Button" HeaderText="Commands" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" CssClass="p-0" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Wrap="false" Font-Bold="True" ForeColor="White" CssClass="text-center"/>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthcareConnectionString %>" SelectCommand="SELECT * FROM [Ambulance]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
