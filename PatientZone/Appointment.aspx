<%@ Page Title="" Language="C#" MasterPageFile="~/PatientZone/PatientZone.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="HealthCare.PatientZone.Appointment" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <%--Appointment--%>
    <section class="pb-5">
        <div class="container">
            <div class="section-title">
                <h2>Appointment</h2>
            </div>
            <div class="shadow p-5 mb-5 bg-white rounded">
                <div class="form-row mb-3">
                    <div class="form-group col-md-12">
                        <label for="AppointmentID">Appointment ID</label>
                        <asp:TextBox ID="TxtAppointmentID" runat="server" class="form-control form-control-lg" ReadOnly></asp:TextBox>
                    </div>
                </div>
                <div class="form-row mb-3">
                    <div class="form-group col-md-6">
                        <label for="PatientName">Patient Name</label>
                        <asp:TextBox ID="TxtPatientName" runat="server" class="form-control form-control-lg" placeholder="Patient Name"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="FatherName">Father Name</label>
                        <asp:TextBox ID="TxtFatherName" runat="server" class="form-control form-control-lg" placeholder="Father Name"/>
                    </div>
                </div>
                <div class="form-row mb-3">
                    <div class="form-group col-md-6">
                        <label for="mobile">Mobile</label>
                        <asp:TextBox ID="TxtMobile" TextMode="Number" MaxLength="10" runat="server" class="form-control form-control-lg" placeholder="Mobile"/>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="Age">Age</label>
                        <asp:TextBox ID="TxtAge" TextMode="Number" runat="server" class="form-control form-control-lg" placeholder="Age"/>
                    </div>
                </div>
                <div class="form-row mb-3">
                    <div class="form-group col-md-6">
                        <label for="Department">Department</label>
                        <asp:DropDownList ID="DdlDepartment" runat="server" Class="form-control form-control-lg">
                            <asp:ListItem Value="Select">Select</asp:ListItem>
                            <asp:ListItem Value="General">General</asp:ListItem>
                            <asp:ListItem Value="ENT">ENT</asp:ListItem>
                            <asp:ListItem Value="Heart">Heart</asp:ListItem>
                            <asp:ListItem Value="Ortho">Ortho</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="PatientType">Patient Type</label>
                        <asp:DropDownList ID="DdlPatientType" runat="server" Class="form-control form-control-lg">
                            <asp:ListItem Value="Select">Select</asp:ListItem>
                            <asp:ListItem Value="New">New</asp:ListItem>
                            <asp:ListItem Value="Old">Old</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="BloodGroup">Blood Group</label>
                        <asp:DropDownList ID="DdlBloodGroup" runat="server" Class="form-control form-control-lg">
                            <asp:ListItem Value="Select">Select</asp:ListItem>
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
                <asp:Button ID="BtnAppointment" Text="Book Appointment" class="btn btn-primary" runat="server" OnClick="BtnAppointment_Click"/>
                <button type="reset" class="btn btn-danger">Reset</button>
            </div>
        </div>
    </section>
</asp:Content>
