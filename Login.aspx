<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HealthCare.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <style>
        .login-reg-panel {
            position: relative;
            top: 50%;
            transform: translateY(-50%);
            text-align: center;
            width: 70%;
            right: 0;
            left: 0;
            margin: auto;
            height: 400px;
            background-color: rgba(236, 48, 20, 0.9);
            margin-top: 300px;
        }

        .white-panel {
            background-color: rgba(255,255, 255, 1);
            height: 500px;
            position: absolute;
            top: -50px;
            width: 50%;
            right: calc(50% - 50px);
            transition: .3s ease-in-out;
            z-index: 0;
            box-shadow: 0 0 15px 9px #00000096;
        }

        .login-reg-panel input[type="radio"] {
            position: relative;
            display: none;
        }

        .login-reg-panel {
            color: #B8B8B8;
        }

            .login-reg-panel #label-login,
            .login-reg-panel #label-register {
                border: 1px solid #9E9E9E;
                padding: 5px 5px;
                width: 150px;
                display: block;
                text-align: center;
                border-radius: 10px;
                cursor: pointer;
                font-weight: 600;
                font-size: 18px;
            }

        .login-info-box {
            width: 30%;
            padding: 0 50px;
            top: 20%;
            left: 0;
            position: absolute;
            text-align: left;
        }

        .register-info-box {
            width: 30%;
            padding: 0 50px;
            top: 20%;
            right: 0;
            position: absolute;
            text-align: left;
        }

        .right-log {
            right: 50px !important;
        }

        .login-show,
        .register-show,
        .login-show-admin {
            z-index: 1;
            display: none;
            opacity: 0;
            transition: 0.3s ease-in-out;
            color: #242424;
            text-align: left;
            padding: 40px;
        }

        .show-log-panel {
            display: block;
            opacity: 0.9;
        }

        .input-group a {
            text-decoration: none;
        }

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


        hr.hr-text {
            position: relative;
            border: none;
            height: 1px;
            background: #999;
        }

            hr.hr-text::before {
                content: attr(data-content);
                display: inline-block;
                background: #fff;
                font-weight: bold;
                font-size: 0.85rem;
                color: #999;
                border-radius: 30rem;
                padding: 0.2rem 2rem;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

        .text-uppercase {
            letter-spacing: .1em;
        }

        .social-link {
            width: 50px;
            height: 50px;
            border: 1px solid #ddd;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #ddd;
            border-radius: 50%;
            transition: all 0.3s;
            font-size: 0.9rem;
        }

            .social-link:hover, .social-link:focus {
                background: #ddd;
                text-decoration: none;
                color: #555;
            }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <section id="Departmnt" class="Department bg-light">
        <div class="container-fluid px-5">
            <div class="container">
                <div class="section-title">
                    <h2>Login Here</h2>
                    <%--<p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>--%>
                </div>
            </div>
            <div class="login-reg-panel">
                <div class="login-info-box">
                    <h2>Have an account?</h2>
                    <%--<p>Lorem ipsum dolor sit amet</p>--%>
                    <label id="label-register" for="log-reg-show" class="mt-3">Login</label>
                    <input type="radio" name="active-log-panel" id="log-reg-show" checked="checked" />
                </div>
                <div class="register-info-box">
                    <h2>Don't have an account?</h2>
                    <%--<p>Lorem ipsum dolor sit amet</p>--%>
                    <label id="label-login" for="log-login-show" class="mt-3">Register</label>
                    <input type="radio" name="active-log-panel" id="log-login-show" />
                </div>
                <div class="white-panel">
                    <div class="login-show">
                        <h2 class="mb-3">LOGIN</h2>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">@</span>
                            </div>
                            <asp:TextBox ID="TxtUser" runat="server" class="form-control form-control-lg" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2">#..</span>
                            </div>
                            <asp:TextBox ID="TxtPass" TextMode="Password" runat="server" class="form-control form-control-lg" placeholder="Password" aria-label="Username" aria-describedby="basic-addon2"></asp:TextBox>
                        </div>
                        <div class="input-group mb-3">
                            <a href="">Forgot password?</a>
                        </div>
                        <asp:DropDownList ID="DdlUtypePatient" runat="server" Visible="False">
                            <asp:ListItem Selected="True" Value="Patient"></asp:ListItem>
                        </asp:DropDownList>
                        <div class="text-center">
                            <asp:Button ID="BtnLog" runat="server" Text="Login" class="btn btn-info btn-block rounded-pill py-2" OnClick="BtnLog_Click" />
                            <%--<input type="Button" value="Reset" class="btn btn-info btn-block rounded-pill py-2">--%>
                        </div>
                        <div class="my-4">
                            <hr data-content="AND" class="hr-text">
                        </div>
                        <ul class="social mb-0 text-center list-inline mt-4">
                            <li class="list-inline-item mx-2"><a href="#" class="social-link"><i class="fa fa-facebook-f fa-2x"></i></a></li>
                            <li class="list-inline-item mx-2"><a href="#" class="social-link"><i class="fa fa-twitter fa-2x"></i></a></li>
                            <li class="list-inline-item mx-2"><a href="#" class="social-link"><i class="fa fa-instagram fa-2x"></i></a></li>
                            <li class="list-inline-item mx-2"><a href="#" class="social-link"><i class="fa fa-linkedin fa-2x "></i></a></li>
                        </ul>
                        <div class="mt-4 text-center">
                            <p>Admin Login<a href="#" class="active" id="register-form-link"> Here</a></p>
                        </div>
                    </div>
                    <div class="login-show-admin">
                        <h2 class="mb-3">ADMIN LOGIN</h2>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon3">@</span>
                            </div>
                            <asp:TextBox ID="TxtAdmin" runat="server" class="form-control form-control-lg" placeholder="Username" aria-label="Username" aria-describedby="basic-addon3"></asp:TextBox>
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon4">#..</span>
                            </div>
                            <asp:TextBox ID="TxtAdminPass" TextMode="Password" runat="server" MaxLength="10" class="form-control form-control-lg" placeholder="Password" aria-label="Username" aria-describedby="basic-addon4"></asp:TextBox>
                        </div>
                        <%--<div class="input-group mb-3">
                            <a href="#">Forgot password?</a>
                        </div>--%>
                        <asp:DropDownList ID="DdlUtypeAdmin" runat="server" Visible="False">
                            <asp:ListItem Selected="True" Value="Admin"></asp:ListItem>
                        </asp:DropDownList>
                        <div class="text-center">
                            <asp:Button ID="BtnLogAdmin" runat="server" Text="Admin Login" class="btn btn-info btn-block rounded-pill py-2" OnClick="BtnLogAdmin_Click" />
                            <%--<input type="submit" value="Login" class="btn btn-info btn-block rounded-pill py-2">--%>
                        </div>
                        <div class="my-4">
                            <hr data-content="AND" class="hr-text">
                        </div>
                        <ul class="social mb-0 text-center list-inline mt-4">
                            <li class="list-inline-item mx-2"><a href="#" class="social-link"><i class="fa fa-facebook-f fa-2x"></i></a></li>
                            <li class="list-inline-item mx-2"><a href="#" class="social-link"><i class="fa fa-twitter fa-2x"></i></a></li>
                            <li class="list-inline-item mx-2"><a href="#" class="social-link"><i class="fa fa-instagram fa-2x"></i></a></li>
                            <li class="list-inline-item mx-2"><a href="#" class="social-link"><i class="fa fa-linkedin fa-2x "></i></a></li>
                        </ul>
                        <div class="mt-4 text-center">
                            <p>Patient Login<a href="#" class="active" id="login-form-link"> Here</a></p>
                        </div>
                    </div>
                    <div class="register-show">
                        <h2 class="mb-3">REGISTER</h2>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon5">@</span>
                            </div>
                            <asp:TextBox ID="TxtName" runat="server" class="form-control form-control-lg" placeholder="Name" aria-label="Username" aria-describedby="basic-addon5"></asp:TextBox>
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon6">@</span>
                            </div>
                            <asp:TextBox ID="TxtMobile" runat="server" MaxLength="10" class="form-control form-control-lg" placeholder="Mobile" aria-label="Username" aria-describedby="basic-addon6" TextMode="number"></asp:TextBox>
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <div class="input-group-text" id="basic-addon7"><i class="fa fa-at"></i></div>
                            </div>
                            <asp:TextBox ID="TxtEmail" runat="server" class="form-control form-control-lg" placeholder="abc@gmail.com" TextMode="Email" aria-label="Username" aria-describedby="basic-addon7"></asp:TextBox>
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon8">#..</span>
                            </div>
                            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" MaxLength="10" class="form-control form-control-lg" placeholder="Password" aria-label="Username" aria-describedby="basic-addon8" AutoCompleteType="None"></asp:TextBox>
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon9">#..</span>
                            </div>
                            <asp:TextBox ID="TxtConfPassword" runat="server" TextMode="Password" MaxLength="10" class="form-control form-control-lg" placeholder="Confirm Password" aria-label="Username" aria-describedby="basic-addon9"></asp:TextBox>
                        </div>
                        <div class="text-center">
                            <asp:Button ID="BtnReg" runat="server" Text="Register" class="btn btn-info btn-block rounded-pill py-2" OnClick="BtnReg_Click" />
                            <%--<input type="submit" value="Register" class="btn btn-info btn-block rounded-pill py-2">--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.login-info-box').fadeOut();
            $('.login-show').addClass('show-log-panel');
            $(".login-show-admin").hide();
        });
        $('.login-reg-panel input[type="radio"]').on('change', function () {
            if ($('#log-login-show').is(':checked')) {
                $(".login-show-admin").hide();
                $(".login-show").show();
                $('.register-info-box').fadeOut();
                $('.login-info-box').fadeIn();
                $('.white-panel').addClass('right-log');
                $('.register-show').addClass('show-log-panel');
                $('.login-show').removeClass('show-log-panel');
            }
            else if ($('#log-reg-show').is(':checked')) {
                $('.register-info-box').fadeIn();
                $('.login-info-box').fadeOut();
                $('.white-panel').removeClass('right-log');
                $('.login-show').addClass('show-log-panel');
                $('.register-show').removeClass('show-log-panel');
            }
        });

        //Admin Login Code
        $(function () {
            $('#login-form-link').click(function (e) {
                $(".login-show").show();
                $(".login-show-admin").hide();
                e.preventDefault();
            });
            $('#register-form-link').click(function (e) {
                $(".login-show-admin").show();
                $(".login-show").hide();
                $('.login-show-admin').addClass('show-log-panel');
                e.preventDefault();
            });
        });
    </script>
</asp:Content>
