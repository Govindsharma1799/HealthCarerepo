<%@ Page Title="" Language="C#" MasterPageFile="~/PatientZone/PatientZone.Master" AutoEventWireup="true" CodeBehind="ConsultDoctor.aspx.cs" Inherits="HealthCare.PatientZone.ConsultDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*General Section*/
        section {
            padding: 60px 0;
            overflow: hidden;
        }

        .section-title {
            text-align: center;
            padding-bottom: 30px;
        }

            .section-title h2 {
                font-size: 32px;
                font-weight: bold;
                text-transform: uppercase;
                margin-bottom: 20px;
                padding-bottom: 20px;
                position: relative;
            }

                .section-title h2::after {
                    content: '';
                    position: absolute;
                    display: block;
                    width: 100px;
                    height: 3px;
                    background: #3fbbc0;
                    bottom: 0;
                    left: calc(50% - 50px);
                }

            .section-title p {
                margin-bottom: 0;
            }

        .borderless table {
            border-top-style: none;
            border-left-style: none;
            border-right-style: none;
            border-bottom-style: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <%--Consult Docter--%>
    <section class="pb-5">
        <div class="container-fluid p-3">
            <div class="section-title">
                <h2>Consult Doctor</h2>
            </div>
            <div class="shadow p-5 mb-5 bg-white rounded">
                <%--Chating Code--%>
                <div class="container-fluid px-3">
                    <div class="row">
                        <div class="col-9">
                            <p class="h2 d-none d-sm-block mt-3">Question Dashboard</p>
                            <div class="table-responsive-md table-borderless borderless">
                                <asp:GridView ID="GV" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="QuesID" DataSourceID="SqlDataSource">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <%--For Patient--%>
                                                <div class="media float-left">
                                                    <img src="https://res.cloudinary.com/mhmd/image/upload/v1564960395/avatar_usae7z.svg" alt="user" width="50" class="bg-info img-thumbnail rounded-circle">
                                                    <div class="media-body ml-3">
                                                        <div class="h5 bg-info rounded py-2 px-2 mb-2">
                                                            <p class=" mb-0">
                                                                <asp:Label Text='<%#Eval("Question")%>' runat="server" />
                                                            </p>
                                                        </div>
                                                        <p class="small">
                                                            <asp:Label Text='<%#Eval("QDT")%>' runat="server" />
                                                        </p>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:HyperLinkField DataNavigateUrlFields="QuesID" DataNavigateUrlFormatString="ConsultDoctor.aspx?QuesID={0}" ControlStyle-CssClass="btn btn-outline-info" Text="Show Answer" ItemStyle-Width="130" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HealthcareConnectionString %>" SelectCommand="SELECT * FROM [Question] WHERE ([EmailID] = @EmailID)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="EmailID" SessionField="uid" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="col-3">
                            <p class="h2 d-none d-sm-block mt-3">Answer Dashboard</p>
                            <div class="table-responsive-md table-borderless borderless">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="p-2 bg-light rounded">
                                                    <asp:Label Text='<%#Eval("Answer")%>' runat="server" CssClass="h5" />
                                                </div>
                                                <p class="small px-3">
                                                            <asp:Label Text='<%#Eval("ADT")%>' runat="server" />
                                                        </p>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%--<asp:BoundField DataField="Answer" SortExpression="Answer" />--%>
                                    </Columns>
                                </asp:GridView>
                            </div>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthcareConnectionString %>" SelectCommand="SELECT [Answer], [QuesID], [ADT] FROM [Answer] WHERE ([QuesID] = @QuesID)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="QuesID" QueryStringField="QuesID" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>

                </div>

                <%--Message Sent Box--%>
                <div class="form-row mb-3">
                    <div class="form-group col-md-12">
                        <asp:TextBox ID="TxtConsultQues" runat="server" class="form-control form-control-lg" placeholder="Type Your Question" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>
                <asp:Button ID="BtnSend" Text="Send" class="btn btn-primary" runat="server" OnClick="BtnSend_Click" />
                <button type="reset" class="btn btn-danger">Reset</button>
            </div>
        </div>
    </section>
</asp:Content>
