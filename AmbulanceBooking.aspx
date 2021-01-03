<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.Master" AutoEventWireup="true" CodeBehind="AmbulanceBooking.aspx.cs" Inherits="HealthCare.AmbulanceBooking" %>

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
    <section class="pb-5">
        <div class="container">
            <div class="section-title">
                <h2>Ambulance Booking</h2>
            </div>
            <div class="shadow p-5 bg-white rounded">
                <div class="row">
                    <div class="col-7">
                        <form>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <asp:TextBox ID="txtName" runat="server" class="form-control form-control-lg" placeholder="Patient Name" />
                                </div>
                                <div class="form-group col-md-6">
                                    <asp:TextBox id="txtFatherName" runat="server" class="form-control form-control-lg" placeholder="Father Name" />
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtMobile" runat="server" class="form-control form-control-lg" placeholder="Mobile" />
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtAlterMobile" runat="server" class="form-control form-control-lg" placeholder="Alternate Mobile" />
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtAddress" runat="server" class="form-control form-control-lg" TextMode="MultiLine" Rows="3" placeholder="Address" />
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <asp:TextBox ID="txtCity" runat="server" class="form-control form-control-lg" placeholder="City" />
                                </div>
                                <div class="form-group col-md-4">
                                    <asp:TextBox ID="txtState" runat="server" class="form-control form-control-lg" placeholder="State" />
                                </div>
                                <div class="form-group col-md-2">
                                    <asp:TextBox ID="txtZip" runat="server" class="form-control form-control-lg" placeholder="Zip" />
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnBookAmbulance" Text="Book Ambulance" runat="server" class="btn btn-info btn-block py-2" OnClick="btnBookAmbulance_Click" />
                            </div>
                        </form>
                    </div>
                    <div class="col-5 p-0">
                        <img src="Images/Ambulance.jpg" class="w-100 h-100" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
