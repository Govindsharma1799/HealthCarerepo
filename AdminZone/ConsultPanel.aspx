<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminPanel.Master" AutoEventWireup="true" CodeBehind="ConsultPanel.aspx.cs" Inherits="HealthCare.AdminZone.ConsultPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .borderless table {
            border-top-style: none;
            border-left-style: none;
            border-right-style: none;
            border-bottom-style: none;
        }

        .collapsible-link[aria-expanded='true']::after {
            transform: rotate(90deg) translateX(-1px);
        }

        .collapsible-link[aria-expanded='true']::before {
            transform: rotate(180deg);
        }

        .w-95 {
            width: 93% !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-4">
        <%--Title--%>
        <h2 class="h2 d-none d-sm-block">Consult Panel</h2>
        <%--<p class="lead d-none d-sm-block">Plus off-canvas sidebar, based on Bootstrap v4</p>--%>
        <div class="shadow p-3 bg-white rounded">
            <div class="container-fluid">
                <div class="table-responsive-md table-borderless borderless">
                    <asp:GridView ID="GV1" runat="server" PageSize="3" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource" CssClass="w-100">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <img src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg" alt="user" width="50" class="bg-info img-thumbnail rounded-circle">
                                    <div class="Chat p-2 float-right w-95">
                                        <div class="link">
                                            <asp:Label Text='<%#Eval("Question")%>' runat="server" CssClass="h5 bg-light rounded p-2 mb-2 " />
                                        </div>
                                        <h6 class="small mt-3">
                                            <asp:Label Text='<%#Eval("QDT")%>' runat="server" />
                                        </h6>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:HyperLinkField DataNavigateUrlFields="QuesID,Question" DataNavigateUrlFormatString="PostAnswer.aspx?QuesID={0}&Question={1}" ControlStyle-CssClass="btn btn-outline-info" Text="Post Answer" ItemStyle-Width="120"/>
                            <asp:HyperLinkField DataNavigateUrlFields="QuesID" DataNavigateUrlFormatString="ConsultPanel.aspx?QuesID={0}" ControlStyle-CssClass="btn btn-outline-info" Text="Show Answer" ItemStyle-Width="130" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HealthcareConnectionString %>" SelectCommand="SELECT * FROM [Question] ORDER BY [QuesID]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
        <p class="h2 d-none d-sm-block mt-3">Answer Dashboard</p>
        <div class="shadow p-3 bg-white rounded">
            <div class="container-fluid">
                <div class="table-responsive-md table-borderless borderless">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="p-2 mb-2">
                                            <asp:Label Text='<%#Eval("Answer")%>' runat="server" CssClass="h5 bg-light rounded-pill p-2" />
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--<asp:BoundField DataField="Answer" SortExpression="Answer" />--%>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthcareConnectionString %>" SelectCommand="SELECT [Answer] FROM [Answer] WHERE ([QuesID] = @QuesID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="QuesID" QueryStringField="QuesID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </div>
                </div>
            </div>
    </div>
</asp:Content>
