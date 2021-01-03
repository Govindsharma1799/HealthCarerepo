<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HealthCare.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*General Section*/
        section {
            padding: 60px 0;
            overflow: hidden;
        }

        .section-bg {
            background-color: #f7fcfc;
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
        #contact .card:hover i, #contact .card:hover h4 {
            color: #87d37c;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <section id="contact" class="bg-light">
        <div class="container px-5">
            <div class="container">
                <div class="section-title">
                    <h2>Contact US</h2>
                    <%--<p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>--%>
                </div>
            </div>
            <div class="row shadow">
                <div class="col-lg-6 ">
                    <div class="row my-4">
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="card border-0">
                                <div class="card-body text-center">
                                    <i class="fa fa-phone fa-5x mb-3" aria-hidden="true"></i>
                                    <h4 class="text-uppercase mb-2">call us</h4>
                                    <h6>+91 01683615582</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-6">
                            <div class="card border-0">
                                <div class="card-body text-center">
                                    <i class="fa fa-globe fa-5x mb-3" aria-hidden="true"></i>
                                    <h4 class="text-uppercase mb-2">email</h4>
                                    <h6>healthcare@gmail.com</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-12 col-lg-12">
                            <div class="card border-0">
                                <div class="card-body text-center">
                                    <i class="fa fa-map-marker fa-5x mb-3" aria-hidden="true"></i>
                                    <h4 class="text-uppercase mb-2">office loaction</h4>
                                    <h6>Suite 02, Level 12, Sahera Tropical Center </h6>
                                    <input type="submit" value="Google Map View" class="btn btn-outline-dark rounded-pill mt-2">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row my-4">
                        <div class="col-12">
                            <form action="" method="post">
                                <div class="card-body py-0">
                                    <div class="form-group">
                                        <div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                                            </div>
                                            <asp:TextBox runat="server" ID="txtName" class="form-control form-control-lg" placeholder="Name Here.." required />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="fa fa-at text-info"></i></div>
                                            </div>
                                            <asp:TextBox runat="server" ID="txtEmail" TextMode="Email"  class="form-control form-control-lg" placeholder="abc@gmail.com" required/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="fa fa-phone text-info"></i></div>
                                            </div>
                                            <asp:TextBox runat="server" ID="txtMobile" TextMode="Number" class="form-control form-control-lg" placeholder="Mobile" required/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="fa fa-home text-info"></i></div>
                                            </div>
                                            <asp:TextBox runat="server" ID="txtAddress" TextMode="MultiLine" class="form-control form-control-lg" placeholder="Addaress" Rows="2" required />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                                            </div>
                                            <asp:TextBox runat="server" ID="txtMsg" TextMode="MultiLine" class="form-control form-control-lg" placeholder="Message" Rows="3" required/>
                                        </div>
                                    </div>

                                    <div class="text-center">
                                        <asp:Button Text="Send Message" runat="server" class="btn btn-info btn-block rounded-pill py-2" OnClick="Unnamed1_Click"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
