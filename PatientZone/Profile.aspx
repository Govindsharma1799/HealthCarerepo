<%@ Page Title="" Language="C#" MasterPageFile="~/PatientZone/PatientZone.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="HealthCare.PatientZone.Profile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*General Section*/
        section {
            padding: 60px 0;
            overflow: hidden;
        }

        .card {
            box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
        }

        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 0 solid rgba(0,0,0,.125);
            border-radius: .25rem;
        }

        .card-body {
            flex: 1 1 auto;
            min-height: 1px;
            padding: 1rem;
        }

        .gutters-sm {
            margin-right: -8px;
            margin-left: -8px;
        }

            .gutters-sm > .col, .gutters-sm > [class*=col-] {
                padding-right: 8px;
                padding-left: 8px;
            }

        .mb-3, .my-3 {
            margin-bottom: 1rem !important;
        }

        .bg-gray-300 {
            background-color: #e2e8f0;
        }

        .h-100 {
            height: 100% !important;
        }

        .shadow-none {
            box-shadow: none !important;
        }

        .borderless table {
            border-top-style: none;
            border-left-style: none;
            border-right-style: none;
            border-bottom-style: none;
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <section class="pb-5">
        <div class="container-fluid px-5">
            <div class="table-responsive-md table-borderless borderless">
                <asp:GridView ID="GV1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmailID" DataSourceID="SqlDataSource">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <div class="main-body shadow p-5 mb-5 bg-white rounded">
                                    <div class="row gutters-sm">
                                        <div class="col-md-4 mb-3">
                                            <div class="card p-3">
                                                <div class="card-body">
                                                    <div class="d-block text-center">
                                                        <img src='<%# "../ProfilePic/"+Eval("ProfilePic")%>' alt="User have Not a Profile Picture" id="userpic" class=" p-1 bg-info" width="350" height="350">
                                                        <div class="mt-3 ">
                                                            <asp:Label Text='<%#Eval("PatientName")%>' class="h2 text-uppercase" runat="server" /><br />
                                                            <asp:Label Text='<%#Eval("EmailID")%>' class="h6 text-secondary" runat="server" /><br />
                                                            <asp:Label Text='<%#Eval("Mobile")%>' class="h6 text-secondary" runat="server" /><br />
                                                            <asp:Label Text='<%#Eval("Status")%>' class="h6 text-secondary" runat="server" /><br />
                                                            <asp:FileUpload ID="FuPic" runat="server" Style="display: none;" />
                                                            <asp:LinkButton ID="LnkChangeProfile" Text="Change Profile Picture" runat="server" class="btn btn-outline-primary mt-4" OnClick="LnkChangeProfile_Click" />
                                                            <asp:Button ID="BtnSubmit" Text="Submit" runat="server" OnClick="BtnSubmit_Click" Style="display: none;" /><br />
                                                            <asp:Button ID="BtnDelete" Text="Delete Account" runat="server" class="btn btn-outline-primary mt-4" />
                                                            <%--<button class="btn btn-outline-primary mt-3" onclick="ChangeProfile_Click">Change Profile Pic</button>--%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--<div class="card mt-3 p-2">
                                                <div class="card-body">
                                                    <div class="d-flex flex-column align-items-center text-center">
                                                        <div class="mt-3">
                                                            <h4>Delete Account</h4>
                                                            <button class="btn btn-outline-primary mt-3">Delete Account</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>--%>
                                        </div>
                                        <div class="col-md-8">
                                            <%--Navbar Menu--%>
                                            <ul class="nav nav-tabs">
                                                <li class="nav-item">
                                                    <a href="" data-target="#profile" data-toggle="tab" class="nav-link active">Profile</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="" data-target="#edit" data-toggle="tab" class="nav-link">Edit</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content py-4">
                                                <div class="tab-pane active" id="profile">
                                                    <div class="card p-3">
                                                        <div class="card-body">
                                                            <h4>Profile</h4>
                                                            <hr />
                                                            <div class="row">
                                                                <div class="col-sm-3">
                                                                    <h6 class="mb-0">Patient Name</h6>
                                                                </div>
                                                                <div class="col-sm-9 text-secondary">
                                                                    <asp:Label Text='<%#Eval("PatientName")%>' runat="server" />
                                                                </div>
                                                            </div>
                                                            <hr />
                                                            <div class="row">
                                                                <div class="col-sm-3">
                                                                    <h6 class="mb-0">Mobile</h6>
                                                                </div>
                                                                <div class="col-sm-9 text-secondary">
                                                                    <asp:Label Text='<%#Eval("Mobile")%>' runat="server" />
                                                                </div>
                                                            </div>
                                                            <hr />
                                                            <div class="row">
                                                                <div class="col-sm-3">
                                                                    <h6 class="mb-0">Email</h6>
                                                                </div>
                                                                <div class="col-sm-9 text-secondary">
                                                                    <asp:Label Text='<%#Eval("EmailID")%>' runat="server" />
                                                                </div>
                                                            </div>
                                                            <hr />
                                                            <div class="row">
                                                                <div class="col-sm-3">
                                                                    <h6 class="mb-0">Gender</h6>
                                                                </div>
                                                                <div class="col-sm-9 text-secondary">
                                                                    <asp:Label Text='<%#Eval("Gender")%>' runat="server" />
                                                                </div>
                                                            </div>
                                                            <hr />
                                                            <div class="row">
                                                                <div class="col-sm-3">
                                                                    <h6 class="mb-0">Age</h6>
                                                                </div>
                                                                <div class="col-sm-9 text-secondary">
                                                                    <asp:Label Text='<%#Eval("Age")%>' runat="server" />
                                                                </div>
                                                            </div>
                                                            <hr />
                                                            <div class="row">
                                                                <div class="col-sm-3">
                                                                    <h6 class="mb-0">Blood Group</h6>
                                                                </div>
                                                                <div class="col-sm-9 text-secondary">
                                                                    <asp:Label Text='<%#Eval("BloodGroup")%>' runat="server" />
                                                                </div>
                                                            </div>
                                                            <hr />
                                                            <div class="row">
                                                                <div class="col-sm-3">
                                                                    <h6 class="mb-0">Address</h6>
                                                                </div>
                                                                <div class="col-sm-9 text-secondary">
                                                                    <asp:Label Text='<%#Eval("Address")%>' runat="server" />
                                                                </div>
                                                            </div>
                                                            <hr />
                                                            <div class="row">
                                                                <div class="col-sm-3">
                                                                    <h6 class="mb-0"></h6>
                                                                </div>
                                                                <div class="col-sm-9">
                                                                    <div class="row">
                                                                        <div class="col-sm-3">
                                                                            <h6 class="mb-0">City</h6>
                                                                        </div>
                                                                        <div class="col-sm-3 text-secondary">
                                                                            <asp:Label Text='<%#Eval("City")%>' runat="server" />
                                                                        </div>
                                                                        <div class="col-sm-3">
                                                                            <h6 class="mb-0">State</h6>
                                                                        </div>
                                                                        <div class="col-sm-3 text-secondary">
                                                                            <asp:Label Text='<%#Eval("State")%>' runat="server" />
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <hr />
                                                            <div class="row">
                                                                <div class="col-sm-3">
                                                                    <h6 class="mb-0">Status</h6>
                                                                </div>
                                                                <div class="col-sm-9 text-secondary">
                                                                    <asp:Label Text='<%#Eval("Status")%>' runat="server" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="edit">
                                                    <div class="card p-3">
                                                        <div class="card-body">
                                                            <h4>Edit Profile</h4>
                                                            <hr />
                                                            <form role="form">
                                                                <div class="form-group row">
                                                                    <h6 class="col-lg-3 col-form-label form-control-label">Name</h6>
                                                                    <div class="col-lg-9">
                                                                        <asp:TextBox ID="TxtName" runat="server" class="form-control" Value='<%#Eval("PatientName")%>' />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <h6 class="col-lg-3 col-form-label form-control-label">Mobile</h6>
                                                                    <div class="col-lg-9">
                                                                        <asp:TextBox ID="TxtMobile" runat="server" TextMode="Number" class="form-control" Value='<%#Eval("Mobile")%>' />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <h6 class="col-lg-3 col-form-label form-control-label">Email</h6>
                                                                    <div class="col-lg-9">
                                                                        <asp:TextBox ID="TxtEmailID" TextMode="Email" runat="server" class="form-control" Value='<%#Eval("EmailID")%>' ReadOnly />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <h6 class="col-lg-3 col-form-label form-control-label">Gender</h6>
                                                                    <div class="col-lg-9">
                                                                        <asp:DropDownList ID="DdlGender" SelectedValue='<%# Eval("Gender") %>' runat="server" class="form-control">
                                                                            <asp:ListItem Text="Select" Value="N/A" />
                                                                            <asp:ListItem Text="Male" Value="Male" />
                                                                            <asp:ListItem Text="Female" Value="Female" />
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <h6 class="col-lg-3 col-form-label form-control-label">Age</h6>
                                                                    <div class="col-lg-3">
                                                                        <asp:TextBox ID="TxtAge" runat="server" class="form-control" Value='<%#Eval("Age")%>' />
                                                                    </div>
                                                                    <h6 class="col-lg-3 col-form-label form-control-label">Blood Group</h6>
                                                                    <div class="col-lg-3">
                                                                        <asp:DropDownList ID="DdlBloodGroup" SelectedValue='<%# Eval("BloodGroup") %>' runat="server" class="form-control">
                                                                            <asp:ListItem Value="N/A">Select</asp:ListItem>
                                                                            <asp:ListItem Value="O+">O+</asp:ListItem>
                                                                            <asp:ListItem Value="O-">O-</asp:ListItem>
                                                                            <asp:ListItem Value="A+">A+</asp:ListItem>
                                                                            <asp:ListItem Value="A-">A-</asp:ListItem>
                                                                            <asp:ListItem Value="B+">B+</asp:ListItem>
                                                                            <asp:ListItem Value="B-">B-</asp:ListItem>
                                                                            <asp:ListItem Value="AB+">AB+</asp:ListItem>
                                                                            <asp:ListItem Value="AB-">AB-</asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <h6 class="col-lg-3 col-form-label form-control-label">Address</h6>
                                                                    <div class="col-lg-9">
                                                                        <asp:TextBox ID="TxtAddress" runat="server" class="form-control" Value='<%#Eval("Address")%>' />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <div class="col-lg-3 col-form-label form-control-label"></div>
                                                                    <div class="col-lg-6">
                                                                        <asp:TextBox ID="TxtCity" runat="server" class="form-control" Value='<%#Eval("City")%>' />
                                                                    </div>
                                                                    <div class="col-lg-3">
                                                                        <asp:TextBox ID="TxtState" runat="server" class="form-control" Value='<%#Eval("State")%>' />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <h6 class="col-lg-3 col-form-label form-control-label">Status</h6>
                                                                    <div class="col-lg-9">
                                                                        <asp:TextBox runat="server" class="form-control" value='<%#Eval("Status")%>' ReadOnly />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group row">
                                                                    <h6 class="col-lg-3 col-form-label form-control-label"></h6>
                                                                    <div class="col-lg-9">
                                                                        <asp:Button ID="BtnSaveChanges" Text="Save Changes" class="btn btn-primary" OnClick="BtnSaveChanges_Click" runat="server" />
                                                                        <input type="reset" class="btn btn-secondary" value="Cancel" />
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:HealthcareConnectionString %>" SelectCommand="SELECT * FROM [Registration] WHERE ([EmailID] = @EmailID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="EmailID" SessionField="uid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </section>
</asp:Content>
