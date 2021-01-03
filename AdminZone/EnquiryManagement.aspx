<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminPanel.Master" AutoEventWireup="true" CodeBehind="EnquiryManagement.aspx.cs" Inherits="HealthCare.AdminZone.EnquiryManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-4">
        <%--Title--%>
        <h2 class="h2 d-none d-sm-block">Enquiry Dashboard</h2>
        <%--<p class="lead d-none d-sm-block">Plus off-canvas sidebar, based on Bootstrap v4</p>--%>
        <div class="shadow p-3 bg-white rounded">
            <div class="table-responsive">
                <asp:GridView ID="GridView1" CssClass="w-100" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SerialNo" DataSourceID="SqlDataSource1" GridLines="None" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="SerialNo" HeaderText="SerialNo" InsertVisible="False" ReadOnly="True" SortExpression="SerialNo" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Msg" HeaderText="Msg" SortExpression="Msg" />
                        <asp:BoundField DataField="EDT" HeaderText="EDT" SortExpression="EDT" />
                        <asp:CommandField ButtonType="Button" HeaderText="Commands" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthcareConnectionString %>" SelectCommand="SELECT * FROM [ContactUs]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
