<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HealthCare.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <style>
        .carousel-inner img {
            height: 700px;
        }

        .carousel-caption {
            top: 150px;
            font-size: 30px;
        }

            .carousel-caption h1 {  
                font-size: 48px;
                font-weight: 700;
                line-height: 56px;
                text-transform: uppercase;
                color: #2c4964;
                font-family: "Raleway", sans-serif;
            }

            .carousel-caption p {
                color: #2c4964;
                font-size: 24px;
            }

        .get-started {
            font-family: "Raleway", sans-serif;
            text-transform: uppercase;
            font-weight: 500;
            font-size: 14px;
            letter-spacing: 1px;
            display: inline-block;
            padding: 12px 35px;
            margin-top: 30px;
            color: #fff;
            background: #1977cc;
        }
        /*Sections General*/
        .why-us {
            z-index: 1;
            margin-top: -200px;
            overflow: hidden;
        }
            /*Why Us*/
            .why-us .content {
                padding: 30px;
                background: #1977cc;
                border-radius: 10px;
                color: #fff;
            }

                .why-us .content h3 {
                    font-weight: 700;
                    font-size: 34px;
                    margin-bottom: 30px;
                }

                .why-us .content p {
                    margin-bottom: 30px;
                }

                .why-us .content .more-btn {
                    display: inline-block;
                    background: rgba(255, 255, 255, 0.2);
                    padding: 6px 30px 8px 30px;
                    color: #fff;
                    border-radius: 50px;
                    transition: all ease-in-out 0.4s;
                }

                    .why-us .content .more-btn i {
                        font-size: 14px;
                    }

                    .why-us .content .more-btn:hover {
                        color: #1977cc;
                        background: #fff;
                    }

            .why-us .icon-boxes .icon-box {
                text-align: center;
                border-radius: 10px;
                background: #fff;
                box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
                padding: 40px 30px;
                width: 100%;
            }

                .why-us .icon-boxes .icon-box i {
                    font-size: 40px;
                    color: #1977cc;
                    margin-bottom: 30px;
                }

                .why-us .icon-boxes .icon-box h4 {
                    font-size: 20px;
                    font-weight: 700;
                    margin: 0 0 30px 0;
                }

                .why-us .icon-boxes .icon-box p {
                    font-size: 15px;
                    color: #848484;
                }
        /*Hover General*/
        .hover {
            overflow: hidden;
            position: relative;
            padding-bottom: 60%;
        }

        .hover-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 90;
            transition: all 0.4s;
        }

        .hover img {
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
            transition: all 0.3s;
        }

        .hover-content {
            position: relative;
            z-index: 99;
        }
        /*Hover Example*/
        .hover-1 img {
            width: 105%;
            position: absolute;
            top: 0;
            left: -5%;
            transition: all 0.3s;
        }

        .hover-1-content {
            position: absolute;
            bottom: 0;
            left: 0;
            z-index: 99;
            transition: all 0.4s;
        }

        .hover-1 .hover-overlay {
            background: rgba(0, 0, 0, 0.5);
        }

        .hover-1-description {
            transform: translateY(0.5rem);
            transition: all 0.4s;
            opacity: 0;
        }

        .hover-1:hover .hover-1-content {
            bottom: 2rem;
        }

        .hover-1:hover .hover-1-description {
            opacity: 1;
            transform: none;
        }

        .hover-1:hover img {
            left: 0;
        }

        .hover-1:hover .hover-overlay {
            opacity: 0;
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
        /*Services*/
        .services .icon-box {
            margin-bottom: 20px;
            text-align: center;
        }

        .services .icon {
            display: flex;
            justify-content: center;
        }

            .services .icon i {
                width: 130px;
                height: 130px;
                margin-bottom: 20px;
                background: #fff;
                border-radius: 50%;
                transition: 0.5s;
                color: #3fbbc0;
                font-size: 60px;
                overflow: hidden;
                padding-top: 35px;
                box-shadow: 0px 0 25px rgba(0, 0, 0, 0.15);
            }

        .services .icon-box:hover .icon i {
            box-shadow: 0px 0 25px rgba(63, 187, 192, 0.3);
        }

        .services .title {
            font-weight: 600;
            margin-bottom: 15px;
            font-size: 18px;
            position: relative;
            padding-bottom: 15px;
        }

            .services .title a {
                color: #444444;
                transition: 0.3s;
            }

                .services .title a:hover {
                    color: #3fbbc0;
                }

            .services .title::after {
                content: '';
                position: absolute;
                display: block;
                width: 50px;
                height: 2px;
                background: #3fbbc0;
                bottom: 0;
                left: calc(50% - 25px);
            }

        .services .description {
            line-height: 24px;
            font-size: 14px;
        }
        /* Carousel */

        #carouselExampleIndicators {
            padding: 0 10px 30px 10px;
            margin-top: 30px;
        }

            #carouselExampleIndicators .carousel-indicators .active {
                background: #333333;
                width: 128px;
                height: 128px;
                border-radius: 100px;
                border-color: #f33;
                opacity: 1;
                overflow: hidden;
            }

            #carouselExampleIndicators .carousel-indicators li {
                width: 50px;
                height: 50px;
                margin: 5px;
                cursor: pointer;
                border: 4px solid #CCC;
                border-radius: 50px;
                opacity: 0.7;
                overflow: hidden;
                transition: all 0.4s;
                position: relative;
            }


        .carousel-indicators img {
            position: absolute;
            width: 100%;
            border-radius: 50%;
            height: 100%;
            top: 0;
            left: 0;
        }

        .carousel-inner {
            min-height: 300px;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <%--Carousel--%>
    <div id="carouselExampleIndicators" class="carousel slide slider m-0 p-0" data-ride="carousel">
        <ol class="carousel-indicators d-none">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="Images/Slider1.jpg" alt="First slide">
                <div class="carousel-caption d-md-block ml-5">
                    <h1 class="h4">Welcome To HealthCare</h1>
                    <p class="small">World of Care</p>
                    <%--<input type="button" class="btn btn-info d-flex rounded-pill get-started" name="name" value="Get Started" />--%>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="Images/Slider2.jpeg" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                    <%--<h5>Your Safety,Our Priority</h5>
                    <p>...</p>--%>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="Images/Slider3.jpg" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                    <%--<h5>...</h5>
                    <p>The best of modern healthcare to ensure you stay healthy, always.</p>--%>
                </div>
            </div>
        </div>
        <%--<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>--%>
    </div>
    <%--Why Us Section--%>
    <section id="why-us" class="why-us bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 d-flex align-items-stretch">
                    <div class="content">
                        <h3>Why Choose Health Care?</h3>
                        <p class="text-justify text-capitalize">Health Care provides Web based portal to Consult to the best doctors of world-wide area.Health Care come with an online repository of Health Tips, Infographics, and Health & Wellness content.</p>
                        <div class="text-center">
                            <a href="#" class="btn btn-lg btn-danger" style="text-decoration: none;">Get Started <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 d-flex align-items-stretch">
                    <div class="icon-boxes d-flex flex-column justify-content-center">
                        <div class="row">
                            <div class="col-xl-4 d-flex align-items-stretch">
                                <div class="icon-box mt-4 mt-xl-0">
                                    <i class="bx bx-receipt"></i>
                                    <h4>Book Ambulance</h4>
                                    <p class="text-justify text-capitalize">Healthe care provides 24x7 online ambulance booking facilities. anyone can book ambulane in just one click</p>
                                </div>
                            </div>
                            <div class="col-xl-4 d-flex align-items-stretch">
                                <div class="icon-box mt-4 mt-xl-0 ">
                                    <i class="bx bx-cube-alt"></i>
                                    <h4>Global Scope</h4>
                                    <p class="text-justify text-capitalize">health Care is a global network of more than 80 certified doctors from over 10 specialties ready to help you with your health and wellness queries around the world.</p>
                                </div>
                            </div>
                            <div class="col-xl-4 d-flex align-items-stretch">
                                <div class="icon-box mt-4 mt-xl-0">
                                    <i class="bx bx-images"></i>
                                    <h4>24x7 Service</h4>
                                    <p class="text-justify text-capitalize">We provide valued personalized medical advice 24x7, ensuring the confidentiality of the user.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%--News Section--%>
    <section id="news" class="bg-white">
        <div class="container">
            <div class="section-title">
                <h2>Health Care in News</h2>
                <%--<p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>--%>
            </div>
            <div class="row">
                <!-- DEMO 1 Item-->
                <div class="col-lg-6 mb-3 mb-lg-0">
                    <div class="hover hover-1 text-white rounded">
                        <img src="Images/1.jpg" alt="">
                        <div class="hover-overlay"></div>
                        <div class="hover-1-content px-5 py-4">
                            <h3 class="hover-1-title text-uppercase font-weight-bold mb-0"><span class="font-weight-light">HealthCare </span>Patient Ward</h3>
                            <p class="hover-1-description font-weight-light mb-0">Clean, Fresh Air & Hygeinic</p>
                        </div>
                    </div>
                </div>
                <!-- DEMO 1 Item-->
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-6 mb-3">
                            <div class="hover hover-1 text-white rounded">
                                <img src="Images/2.jpg" alt="">
                                <div class="hover-overlay"></div>
                                <div class="hover-1-content px-4">
                                    <h4 class="hover-1-title text-uppercase font-weight-bold mb-0"><span class="font-weight-light">HC </span>Operation</h4>
                                    <p class="hover-1-description font-weight-light mb-0">Surgery Lab with Hygeinic</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 mb-3 mb-lg-0">
                            <div class="hover hover-1 text-white rounded">
                                <img src="Images/3.jpg" alt="">
                                <div class="hover-overlay"></div>
                                <div class="hover-1-content px-4">
                                    <h4 class="hover-1-title text-uppercase font-weight-bold mb-0"><span class="font-weight-light">HC </span>Research</h4>
                                    <p class="hover-1-description font-weight-light mb-0">Research of Medical Science</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 mb-3">
                            <div class="hover hover-1 text-white rounded">
                                <img src="Images/4.jpg" alt="">
                                <div class="hover-overlay"></div>
                                <div class="hover-1-content px-4">
                                    <h4 class="hover-1-title text-uppercase font-weight-bold mb-0"><span class="font-weight-light">HealthCare </span>Lab</h4>
                                    <p class="hover-1-description font-weight-light mb-0">Clean Lab with Accurate Tests</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="hover hover-1 text-white rounded">
                                <img src="Images/5.jpg" alt="">
                                <div class="hover-overlay"></div>
                                <div class="hover-1-content px-4">
                                    <h4 class="hover-1-title text-uppercase font-weight-bold mb-0"><span class="font-weight-light">Wearing </span>Mask</h4>
                                    <p class="hover-1-description font-weight-light mb-0">Stay Home,Safe Home</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%--Services--%>
    <section id="services" class="services bg-light">
        <div class="container">
            <div class="section-title">
                <h2>Centres of Excellence</h2>
                <p>Combining the best specialists and equipment to provide you nothing short of the best in healthcare</p>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-4 icon-box">
                    <div class="icon"><i class="fa fa-heartbeat"></i></div>
                    <h4 class="title"><a href="">Heart</a></h4>
                    <%--<p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>--%>
                </div>
                <div class="col-lg-3 col-md-4 icon-box">
                    <div class="icon"><i class="fas fa-lungs"></i></div>
                    <h4 class="title"><a href="">Cancer Care</a></h4>
                    <%--<p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>--%>
                </div>
                <div class="col-lg-3 col-md-4 icon-box">
                    <div class="icon"><i class="fa fa-brain"></i></div>
                    <h4 class="title"><a href="">Nuero Science</a></h4>
                    <%--<p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>--%>
                </div>
                <div class="col-lg-3 col-md-4 icon-box">
                    <div class="icon"><i class="fa fa-running"></i></div>
                    <h4 class="title"><a href="">Ortho Padics</a></h4>
                    <%--<p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>--%>
                </div>
                <div class="col-lg-3 col-md-4 icon-box">
                    <div class="icon"><i class="fa fa-bone"></i></div>
                    <h4 class="title"><a href="">Spine</a></h4>
                    <%--<p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>--%>
                </div>
                <div class="col-lg-3 col-md-4 icon-box" data-aos="zoom-in" data-aos-delay="300">
                    <div class="icon"><i class="fa fa-microscope"></i></div>
                    <h4 class="title"><a href="">Transplant</a></h4>
                    <%--<p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>--%>
                </div>
                <div class="col-lg-3 col-md-4 icon-box" data-aos="zoom-in" data-aos-delay="300">
                    <div class="icon"><i class="fa fa-tooth"></i></div>
                    <h4 class="title"><a href="">Dental</a></h4>
                    <%--<p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>--%>
                </div>
                <div class="col-lg-3 col-md-4 icon-box" data-aos="zoom-in" data-aos-delay="300">
                    <div class="icon"><i class="fa fa-diagnoses"></i></div>
                    <h4 class="title"><a href="">Surgery</a></h4>
                    <%--<p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>--%>
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
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">
                        <img class="img-responsive" src="https://res.cloudinary.com/mhmd/image/upload/v1556834132/avatar-4_ozhrib.png" alt="Alternate Text" />
                    </li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1">
                        <img class="img-responsive" src="https://res.cloudinary.com/mhmd/image/upload/v1556834130/avatar-3_hzlize.png" alt="Alternate Text" />
                    </li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2">
                        <img class="img-responsive" src="https://res.cloudinary.com/mhmd/image/upload/v1556834133/avatar-2_f8dowd.png" alt="Alternate Text" />
                    </li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="3">
                        <img class="img-responsive" src="https://res.cloudinary.com/mhmd/image/upload/v1556834133/avatar-1_s02nlg.png" alt="Alternate Text" />
                    </li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="4">
                        <img class="img-responsive" src="https://res.cloudinary.com/mhmd/image/upload/v1556834132/avatar-4_ozhrib.png" alt="Alternate Text" />
                    </li>
                </ol>
                <div class="carousel-inner px-5 text-center">
                    <div class="carousel-item active">
                        <%--<blockquote>
                            <div class="row">
                                <div class="col-sm-8 col-sm-offset-2">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. !</p>
                                    <small>&#8212; Someone famous</small>
                                </div>
                            </div>
                        </blockquote>--%>
                        <div class="media">
                            <div class="media-body">
                                <blockquote class="blockquote border-0 p-0">
                                    <p class="font-italic lead">
                                        <i class="fa fa-quote-left mr-3 text-success"></i>6 yrs ago, no one in the family or even me, ever thought I would take up Astronomy and Science! Just a casual conversation, post transplant, with Dr Jitendra Gupta, Health Care , triggered off this childhood passion in me Today I am doing online courses in Physics, Chemistry, Astronomy, Astrophysics and Observational Astronomy. Enjoy the 2nd innings given to you by the Donor and your Doctors!

                                        <i class="fa fa-quote-right ml-3 text-success"></i>
                                    </p>
                                    <footer class="blockquote-footer">
                                        <cite title="Source Title">Ms. Geeta Kalyanaraman</cite>
                                    </footer>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="media">
                            <div class="media-body">
                                <blockquote class="blockquote border-0 p-0">
                                    <p class="font-italic lead">
                                        <i class="fa fa-quote-left mr-3 text-success"></i>Dear Dr. Srivastva, as of tomorrow it will have been a year since you changed my life. I wanted to let you know how great I am doing and wanted to thank you from the very bottom of my heart. I owe you so much I could never be able to repay you. When you first met me I was at a constant 7 or 8 (sometimes higher) on the pain scale.
                                        <i class="fa fa-quote-right ml-3 text-success"></i>
                                    </p>
                                    <footer class="blockquote-footer">
                                        <cite title="Source Title">Ms. Michelle Smith</cite>
                                    </footer>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="media">
                            <div class="media-body">
                                <blockquote class="blockquote border-0 p-0">
                                    <p class="font-italic lead">
                                        <i class="fa fa-quote-left mr-3 text-success"></i>When I was 80 in 2010, my surgeon Dr.Paul Ramesh told me that if I if I chose medicinal aid it will be palliative but choosing bypass surgery will be more curative. The one memorable line which made me decide on surgery was his saying "I will do it as I would do it to my father."
                                        <i class="fa fa-quote-right ml-3 text-success"></i>
                                    </p>
                                    <footer class="blockquote-footer">
                                        <cite title="Source Title">R.Natarajan</cite>
                                    </footer>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="media">
                            <div class="media-body">
                                <blockquote class="blockquote border-0 p-0">
                                    <p class="font-italic lead">
                                        <i class="fa fa-quote-left mr-3 text-success"></i>I come from a family of doctors and I was suffering from morbid obesity with co-morbidities like diabetes, hypertension, and sleep apnoea. It was becoming increasingly difficult for me to concentrate on my practice and continue my day today life. I've been consulted...
                                        <i class="fa fa-quote-right ml-3 text-success"></i>
                                    </p>
                                    <footer class="blockquote-footer">
                                        <cite title="Source Title">Dr. Rama Devi</cite>
                                    </footer>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="media">
                            <div class="media-body">
                                <blockquote class="blockquote border-0 p-0">
                                    <p class="font-italic lead">
                                        <i class="fa fa-quote-left mr-3 text-success"></i>I came to India as a medical tourism patient to Dr. Rajkumar. I am thankful to my stars to be treated under him who became more of a friend to me. I lot 82lbs in six months after my bypass and lost my Diabetes, Hypertension, Cholesterol and Joint pain. I am back to my energetic best in the last few months.
                                        <i class="fa fa-quote-right ml-3 text-success"></i>
                                    </p>
                                    <footer class="blockquote-footer">
                                        <cite title="Source Title">Mr. Ajay Tiwari</cite>
                                    </footer>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
</asp:Content>
