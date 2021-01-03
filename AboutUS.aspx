<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.Master" AutoEventWireup="true" CodeBehind="AboutUS.aspx.cs" Inherits="HealthCare.AboutUS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .social-link {
            width: 30px;
            height: 30px;
            border: 1px solid #ddd;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #666;
            border-radius: 50%;
            transition: all 0.3s;
            font-size: 0.9rem;
        }

            .social-link:hover,
            .social-link:focus {
                background: #ddd;
                text-decoration: none;
                color: #555;
            }

        .width-auto {
            width: auto;
        }

        .text-lg {
            font-size: 2rem;
        }

        .carousel-indicators li {
            border: none;
            background: #ccc;
        }

            .carousel-indicators li.active {
                background: #28a745;
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
        /*Count*/
        .counts {
            padding: 70px 0 60px;
        }

            .counts .count-box {
                padding: 30px 30px 25px 30px;
                width: 100%;
                position: relative;
                text-align: center;
                background: #fff;
            }

                .counts .count-box i {
                    position: absolute;
                    top: -25px;
                    left: 50%;
                    transform: translateX(-50%);
                    font-size: 24px;
                    background: #1977cc;
                    padding: 12px;
                    color: #fff;
                    border-radius: 50px;
                }

                .counts .count-box span {
                    font-size: 36px;
                    display: block;
                    font-weight: 600;
                    color: #082744;
                }

                .counts .count-box p {
                    padding: 0;
                    margin: 0;
                    font-family: "Raleway", sans-serif;
                    font-size: 14px;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <%--About US--%>
    <div class="bg-light">
        <div class="container py-5">
            <div class="row h-100 align-items-center py-5">
                <div class="col-lg-6">
                    <h1 class="display-4">About us page</h1>
                    <p class="lead text-muted mb-0">Create a minimal about us page using Bootstrap 4.</p>
                    <p class="lead text-muted">
                        Snippet by <a href="https://bootstrapious.com/snippets" class="text-muted">
                            <u>Bootstrapious</u></a>
                    </p>
                </div>
                <div class="col-lg-6 d-none d-lg-block">
                    <img src="https://res.cloudinary.com/mhmd/image/upload/v1556834136/illus_kftyh4.png" alt="" class="img-fluid">
                </div>
            </div>
        </div>
    </div>
    <div class="bg-white py-5">
        <div class="container py-5">
            <div class="row align-items-center mb-5">
                <div class="col-lg-6 order-2 order-lg-1">
                    <i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
                    <h2 class="font-weight-light">Lorem ipsum dolor sit amet</h2>
                    <p class="font-italic text-muted mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    <a href="#" class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
                </div>
                <div class="col-lg-5 px-5 mx-auto order-1 order-lg-2">
                    <img src="https://res.cloudinary.com/mhmd/image/upload/v1556834139/img-1_e25nvh.jpg" alt="" class="img-fluid mb-4 mb-lg-0">
                </div>
            </div>
            <div class="row align-items-center">
                <div class="col-lg-5 px-5 mx-auto">
                    <img src="https://res.cloudinary.com/mhmd/image/upload/v1556834136/img-2_vdgqgn.jpg" alt="" class="img-fluid mb-4 mb-lg-0">
                </div>
                <div class="col-lg-6">
                    <i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
                    <h2 class="font-weight-light">Lorem ipsum dolor sit amet</h2>
                    <p class="font-italic text-muted mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    <a href="#" class="btn btn-light px-5 rounded-pill shadow-sm">Learn More</a>
                </div>
            </div>
        </div>
    </div>
    <%--Counter--%>
    <section id="counts" class="counts bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="count-box">
                        <i class="fa fa-wpexplorer"></i>
                        <span data-toggle="counter-up">85</span>
                        <p>Doctors</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
                    <div class="count-box">
                        <i class="fa fa-wpexplorer"></i>
                        <span data-toggle="counter-up">18</span>
                        <p>Departments</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                    <div class="count-box">
                        <i class="fa fa-wpexplorer"></i>
                        <span data-toggle="counter-up">8</span>
                        <p>Research Labs</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                    <div class="count-box">
                        <i class="fa fa-wpexplorer"></i>
                        <span data-toggle="counter-up">150</span>
                        <p>Awards</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%--Testinomials--%>
    <section class="pb-5">
        <div class="container">
            <div class="section-title">
                <h2>Testinomials</h2>
            </div>
            <div class="carousel slide" id="carouselExampleIndicators" data-ride="carousel">
                <!-- Bootstrap carousel indicators [nav] -->
                <ol class="carousel-indicators mb-0">
                    <li class="active" data-target="#carouselExampleIndicators" data-slide-to="0"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <!-- Bootstrap inner [slides]-->
                <div class="carousel-inner px-5 pb-4">
                    <!-- Carousel slide-->
                    <div class="carousel-item active">
                        <div class="media">
                            <img class="rounded-circle img-thumbnail" src="https://res.cloudinary.com/mhmd/image/upload/v1579676165/avatar-1_ffutqr.jpg" alt="" width="75">
                            <div class="media-body ml-3">
                                <blockquote class="blockquote border-0 p-0">
                                    <p class="font-italic lead"><i class="fa fa-quote-left mr-3 text-success"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <footer class="blockquote-footer">
                                        Someone famous in
                                                <cite title="Source Title">Source Title</cite>
                                    </footer>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                    <!-- Carousel slide-->
                    <div class="carousel-item">
                        <div class="media">
                            <img class="rounded-circle img-thumbnail" src="https://res.cloudinary.com/mhmd/image/upload/v1579676165/avatar-3_hdxocq.jpg" alt="" width="75">
                            <div class="media-body ml-3">
                                <blockquote class="blockquote border-0 p-0">
                                    <p class="font-italic lead"><i class="fa fa-quote-left mr-3 text-success"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <footer class="blockquote-footer">
                                        Someone famous in
                                                <cite title="Source Title">Source Title</cite>
                                    </footer>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                    <!-- Carousel slide-->
                    <div class="carousel-item">
                        <div class="media">
                            <img class="rounded-circle img-thumbnail" src="https://res.cloudinary.com/mhmd/image/upload/v1579676165/avatar-2_gibm2s.jpg" alt="" width="75">
                            <div class="media-body ml-3">
                                <blockquote class="blockquote border-0 p-0">
                                    <p class="font-italic lead"><i class="fa fa-quote-left mr-3 text-success"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <footer class="blockquote-footer">
                                        Someone famous in
                                                <cite title="Source Title">Source Title</cite>
                                    </footer>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </div>


                <%--<!-- Bootstrap controls [dots]-->
                            <a class="carousel-control-prev width-auto" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                <i class="fa fa-angle-left text-dark text-lg"></i>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next width-auto" href="#carouselExampleIndicators" role="button" data-slide="next">
                                <i class="fa fa-angle-right text-dark text-lg"></i>
                                <span class="sr-only">Next</span>
                            </a>--%>
            </div>
        </div>
    </section>
    <%--Our Team--%>
    <div class="bg-light py-5">
        <div class="container py-5">
            <div class="row mb-4">
                <div class="col-lg-5">
                    <h2 class="display-4 font-weight-light">Our team</h2>
                    <p class="font-italic text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                </div>
            </div>
            <div class="row text-center">
                <!-- Team item-->
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4">
                        <img src="https://res.cloudinary.com/mhmd/image/upload/v1556834132/avatar-4_ozhrib.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">Manuella Nevoresky</h5>
                        <span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4">
                        <img src="https://res.cloudinary.com/mhmd/image/upload/v1556834130/avatar-3_hzlize.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">Samuel Hardy</h5>
                        <span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4">
                        <img src="https://res.cloudinary.com/mhmd/image/upload/v1556834133/avatar-2_f8dowd.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">Tom Sunderland</h5>
                        <span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm py-5 px-4">
                        <img src="https://res.cloudinary.com/mhmd/image/upload/v1556834133/avatar-1_s02nlg.png" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                        <h5 class="mb-0">John Tarly</h5>
                        <span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
