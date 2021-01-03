<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="HealthCare.Department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

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

        .nav-pills-custom .nav-link {
            color: #000000;
            background: #fff;
            position: relative;
        }

        /*.nav-pills-custom .nav-link.active {
                color: #45b649;
                background: #fff;
            }*/


        /* Add indicator arrow for the active tab */
        @media (min-width: 992px) {
            .nav-pills-custom .nav-link::before {
                content: '';
                display: block;
                border-top: 8px solid transparent;
                border-left: 10px solid #007bff;
                border-bottom: 8px solid transparent;
                position: absolute;
                top: 50%;
                right: -10px;
                transform: translateY(-50%);
                opacity: 0;
            }
        }

        .nav-pills-custom .nav-link.active::before {
            opacity: 1;
        }

        .faq .faq-list {
            padding: 0 100px;
        }

            .faq .faq-list ul {
                padding: 0;
                list-style: none;
            }

            .faq .faq-list li + li {
                margin-top: 15px;
            }

            .faq .faq-list li {
                padding: 20px;
                background: #fff;
                border-radius: 4px;
                position: relative;
            }

            .faq .faq-list a {
                display: block;
                position: relative;
                font-family: "Poppins", sans-serif;
                font-size: 16px;
                line-height: 24px;
                font-weight: 500;
                padding: 0 30px;
                outline: none;
                text-decoration: none;
            }

            .faq .faq-list .icon-help {
                font-size: 24px;
                position: absolute;
                right: 0;
                left: 20px;
                color: #76b5ee;
            }

            .faq .faq-list .icon-show, .faq .faq-list .icon-close {
                font-size: 24px;
                position: absolute;
                right: 0;
                top: 0;
            }

            .faq .faq-list p {
                margin-bottom: 0;
                padding: 10px 0 0 0;
            }

            .faq .faq-list .icon-show {
                display: none;
            }

            .faq .faq-list a.collapsed {
                color: #343a40;
            }

                .faq .faq-list a.collapsed:hover {
                    color: #1977cc;
                }

                .faq .faq-list a.collapsed .icon-show {
                    display: inline-block;
                }

                .faq .faq-list a.collapsed .icon-close {
                    display: none;
                }

        @media (max-width: 1200px) {
            .faq .faq-list {
                padding: 0;
            }
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

        .social-link {
            width: 30px;
            height: 30px;
            border: 1px solid #ddd;
            color: #555;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: #ddd;
            border-radius: 50%;
            transition: all 0.3s;
            font-size: 18px;
        }

            .social-link:hover, .social-link:focus {
                background: #ddd;
                text-decoration: none;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <%--Department Section--%>
    <section id="Departmnt" class="Department bg-light">
        <div class="container-fluid px-5">
            <div class="container">
                <div class="section-title">
                    <h2>Department</h2>
                    <%--<p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>--%>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <!-- Tabs nav -->
                    <div class="nav flex-column nav-pills nav-pills-custom" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link mb-3 p-3 shadow active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">
                            <i class="fa fa-star mr-2"></i>
                            <span class="font-weight-bold small text-uppercase">Cardiology</span></a>

                        <a class="nav-link mb-3 p-3 shadow" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">
                            <i class="fa fa-star mr-2"></i>
                            <span class="font-weight-bold small text-uppercase">Orthopedics</span></a>

                        <a class="nav-link mb-3 p-3 shadow" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">
                            <i class="fa fa-star mr-2"></i>
                            <span class="font-weight-bold small text-uppercase">Robotic Surgery</span></a>

                        <a class="nav-link mb-3 p-3 shadow" id="v-pills-Nephrology-tab" data-toggle="pill" href="#v-pills-Nephrology" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                            <i class="fa fa-star mr-2"></i>
                            <span class="font-weight-bold small text-uppercase">Nephrology</span></a>
                        <a class="nav-link mb-3 p-3 shadow" id="v-pills-Neurology-tab" data-toggle="pill" href="#v-pills-Neurology" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                            <i class="fa fa-star mr-2"></i>
                            <span class="font-weight-bold small text-uppercase">Neurology</span></a>
                        <a class="nav-link mb-3 p-3 shadow" id="v-pills-Gastroenterology-tab" data-toggle="pill" href="#v-pills-Gastroenterology" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                            <i class="fa fa-star mr-2"></i>
                            <span class="font-weight-bold small text-uppercase">Gastroenterology</span></a>
                        <a class="nav-link mb-3 p-3 shadow" id="v-pills-Bariatric Surgery-tab" data-toggle="pill" href="#v-pills-Bariatric Surgery" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                            <i class="fa fa-star mr-2"></i>
                            <span class="font-weight-bold small text-uppercase">Bariatric Surgery</span></a>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade shadow rounded bg-white show active p-5" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                            <h4 class="font-italic mb-4">Cardiology</h4>
                            <div class="row">
                                <div class="col-7">
                                    <p class="font-italic text-muted mb-2 text-justify">
                                        Cardiology is a branch of medicine that deals with the disorders of the heart as well as some parts of the circulatory system. The field includes medical diagnosis and treatment of congenital heart defects, coronary artery disease, heart failure, valvular heart disease and electrophysiology.Cardiac electrophysiology is a subspecialty of cardiology. The physician looks at how electric currents inside the heart muscle tissue work, how the current spreads, and what the pattern of the currents mean. Cardiac electrophysiology is a subspecialty of cardiology. The physician looks at how electric currents inside the heart muscle tissue work, how the current spreads, and what the pattern of the currents mean. The Health Cdre Heart Institutes are regarded as one of the best heart hospitals in India. The scorecard shows an unmatched record of over 1,52,000 cardiac and cardiothoracic surgeries.We have vast experience in the most complicated coronary artery bypass surgery, surgery for all types of valvular heart diseases, paediatric heart surgery, adult and paediatric heart transplantation with success rates comparable to international standards.
                                    </p>

                                </div>
                                <div class="col-5">
                                    <img src="Images/Cardiology.png" width="350" height="350" />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade shadow rounded bg-white p-5" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                            <h4 class="font-italic mb-4">Orthopedics</h4>
                            <div class="row">
                                <div class="col-7">
                                    <p class="font-italic text-muted mb-2 text-justify">
                                        Orthopedics is the field of medicine that focuses on surgery on, or manipulation of, the musculoskeletal system. The surgical specialty was originally focused on developmental deformities and the effects of polio in children, but today it has expanded significantly to address all the conditions and diseases affecting the musculoskeletal system in individuals of all ages.

Orthopedic conditions can be treated operatively and nonoperatively with medications,

The overall goal of orthopedic treatments is to preserve or restore the musculoskeletal system. The Health Care Institutes of Orthopedics is regarded as one of the best & top orthopedics hospitals in India with a legacy of innovation and excellence. The Institutes are at the forefront in offering the latest in Orthopedic treatments and Orthopedic surgical advancements in India on par with the best centres in the world.Health Care Hospitals offers key & best orthopedic surgeries and procedures in India. We perform bone and joint replacement surgeries which include the most current Arthroscopic and Reconstructive techniques.
                                    </p>
                                </div>
                                <div class="col-5">
                                    <img src="Images/Orthopedics.png" width="350" height="350"/>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade shadow rounded bg-white p-5" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                            <h4 class="font-italic mb-4">Robotic Surgery</h4>
                            <div class="row">
                                <div class="col-7">
                                    <p class="font-italic text-muted mb-2 text-justify">
                                        Robotic surgery are types of surgical procedures that are done using robotic systems. Robotically-assisted surgery was developed to try to overcome the limitations of pre-existing minimally-invasive surgical procedures and to enhance the capabilities of surgeons performing open surgery. Robotic surgery are types of surgical procedures that are done using robotic systems. Robotically-assisted surgery was developed to try to overcome the limitations of pre-existing minimally-invasive surgical procedures and to enhance the capabilities of surgeons performing open surgery Robotic surgery are types of surgical procedures that are done using robotic systems. Robotically-assisted surgery was developed to try to overcome the limitations of  performing open surgeryRobotic Surgery is a branch of medical science that uses a robotic arm controlled with a computer by a surgeon. Small tools attached to the robotic arm are then used to perform the surgery by copying the hand movements of the surgeon as he controls the robotic arm. Health Care Hospitals is your one-stop destination to book the finest Robot-assisted Surgeons in your town.
                                    </p>
                                </div>
                                <div class="col-5">
                                    <img src="Images/Robotic%20Surgery.jpg" width="350" height="350" />
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade shadow rounded bg-white p-5" id="v-pills-Nephrology" role="tabpanel" aria-labelledby="v-pills-Nephrology-tab">
                            <h4 class="font-italic mb-4">Nephrology</h4>
                            <div class="row">
                                <div class="col-7">
                                    <p class="font-italic text-muted mb-2 text-justify">
                                        Nephrology is a specialty of medicine and pediatric medicine that concerns with study of the kidneys, specifically normal kidney function and kidney disease, the preservation of kidney health, and the treatment of kidney disease, from diet and medication to renal replacement therapy. Nephrology is a specialty of medicine and pediatric medicine that concerns with study of the kidneys, specifically normal kidney function and kidney disease, the preservation of kidney health, and the treatment of kidney disease, from diet and medication to renal replacement therapyNephrology is a branch of medical science that deals with the diagnosis and treatment of disorders related to the kidney. Nephrology is a centre of excellence at Apollo and sees more than 10,000 patients every year. Helath Care houses some of the very best specialists in the world who specialize in management of kidney failure, dialysis, electrolyte disturbance, diabetic nephropathy, hypertension to kidney transplant. The transplant program is very active. Health Care Hospitals is your one-stop destination to book the best Nephrologists in your town.
                                    </p>
                                </div>
                                <div class="col-5">
                                    <img src="Images/Nephrology.jpg" width="350" height="350"/>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade shadow rounded bg-white p-5" id="v-pills-Neurology" role="tabpanel" aria-labelledby="v-pills-Neurology-tab">
                            <h4 class="font-italic mb-4">Neurology</h4>
                            <div class="row">
                                <div class="col-7">
                                    <p class="font-italic text-muted mb-2 text-justify">
                                        Neurology is a branch of medicine dealing with disorders of the nervous system.  Neurology is a branch of medicine dealing with disorders of the nervous system. Neurology deals with the diagnosis , including their coverings, blood vessels. The Health Care Hospital Neuro departments are equipped with the best team and state of the art facilities like Neuro radiology, sleep lab, Intensive care units etc. Our Neuro team takes care of more than 300 variety of problems like aneurisms, dementia, Alzheimer’s, epilepsy, cerebro vascular diseases, headache, multiple sclerosis, stroke, Neuro oncology, neurophysiology, sleep neurology.Taking the best of care for your nervous system is an aspect whose importance cannot be underlined enough, so leave it to the Apollo eDoc!  The Health Care stroke program is a protocol based approach and is benchmarked with the best institutions in the world. Taking the best of care for your nervous system is an aspect whose importance cannot be underlined enough, so leave it to the Apollo eDoc.in portal to find the best neurologists for any challenge that befalls your nerves!
                                    </p>
                                </div>
                                <div class="col-5">
                                    <img src="Images/Neurology.png" width="350" height="350"/>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade shadow rounded bg-white p-5" id="v-pills-Gastroenterology" role="tabpanel" aria-labelledby="v-pills-Gastroenterology-tab">
                            <h4 class="font-italic mb-4">Gastroenterology</h4>
                            <div class="row">
                                <div class="col-7">
                                    <p class="font-italic text-muted mb-2 text-justify">
                                        Gastroenterology deals with the diagnosis and treatment of complications of the gastrointestinal tract, i.e. the stomach and small intestine. A gastroenterologist deals with patients suffering from gastroenteritis, showing symptoms of vomiting, diarrhea, abdominal pain and cramping. With Apollo Hospitals’ qualified bench strength of Gastroenterologists who are the best in their field, finest treatment is just around the corner. Experience a smoother medical experience for booking an appointment or finding the best gastroenterologists for world-class for your gastro-related problems at Health Care Hospitals.Gastroenterology deals with the diagnosis and treatment of complications of the gastrointestinal tract, i.e. the stomach and small intestine. A gastroenterologist deals with patients suffering from gastroenteritis, showing symptoms of vomiting, diarrhea, abdominal pain and cramping. With Apollo Hospitals’ finest treatment is just around the corner. Experience a smoother medical experience for booking an appointment gastroenterologists for your gastro-related problems at Health Care Hospitals.
                                    </p>
                                </div>
                                <div class="col-5">
                                    <img src="Images/Gastroenterology.jpg" width="350" height="350"/>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade shadow rounded bg-white p-5" id="v-pills-Bariatric Surgery" role="tabpanel" aria-labelledby="v-pills-Bariatric Surgery-tab">
                            <h4 class="font-italic mb-4">Bariatric Surgery</h4>
                            <div class="row">
                                <div class="col-7">
                                    <p class="font-italic text-muted mb-2 text-justify">
                                        Bariatric Surgery deals with weight reduction using various techniques to combat obesity. The process includes reducing the size of the stomach or removing a portion of the stomach or re-routing the small intestine. Apollo Hospitals is home to the best bariatric surgeons in the nation who are skilled in Gastrectomy and Gastroplasty among other procedures. With Health Care Hospitals, booking an appointment with the finest Bariatric Surgeons is just a click away.Bariatric Surgery deals with weight reduction using various techniques to combat obesity. The process includes reducing the size of the stomach or removing a portion of the stomach or re-routing the small intestine. Apollo Hospitals is home to the best bariatric surgeons in the nation who are skilled in Gastrectomy and Gastroplasty among other procedures. With Health Care Hospitals, booking an appointment with the finest Bariatric Surgeons is just a click awayWith Health Care Hospitals, booking an appointment with the finest Bariatric Surgeons is just a click awayWith Health Care Hospitals, booking an appointment with the  is just a click away.
                                    </p>
                                </div>
                                <div class="col-5">
                                    <img src="Images/Bariatric%20Surgery.jpg" width="350" height="350"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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
    <%--Doctors List--%>
    <section id="Doctors" class="bg-white">
        <div class="container">
            <div class="container">
                <div class="section-title">
                    <h2>Best Doctors</h2>
                    <%--<p>Best Doctors's for your Life</p>--%>
                </div>
            </div>
            <%-- <div class="row text-center">
                <!-- Team item-->
                <div class="col-lg-3 col-md-6 mb-5">
                    <div class="bg-white rounded shadow-sm pb-5">
                        <img src="https://res.cloudinary.com/mhmd/image/upload/v1556834132/avatar-4_ozhrib.png" alt="" class="img-fluid mb-3 shadow-sm">
                        <h5 class="mb-0">Manuella Nevoresky</h5>
                        <span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                        <button type="button" class="btn btn-primary mt-3">View Profile</button>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm pb-5">
                        <img src="https://res.cloudinary.com/mhmd/image/upload/v1556834130/avatar-3_hzlize.png" alt="" class="img-fluid mb-3 shadow-sm">
                        <h5 class="mb-0">Samuel Hardy</h5>
                        <span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                        <button type="button" class="btn btn-primary mt-3">View Profile</button>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm pb-5">
                        <img src="https://res.cloudinary.com/mhmd/image/upload/v1556834133/avatar-2_f8dowd.png" alt="" class="img-fluid  mb-3 shadow-sm">
                        <h5 class="mb-0">Tom Sunderland</h5>
                        <span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                        <button type="button" class="btn btn-primary mt-3">View Profile</button>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="bg-white rounded shadow-sm pb-5">
                        <img src="https://res.cloudinary.com/mhmd/image/upload/v1556834133/avatar-1_s02nlg.png" alt="" class="img-fluid mb-3 shadow-sm">
                        <h5 class="mb-0">John Tarly</h5>
                        <span class="small text-uppercase text-muted">CEO - Founder</span>
                        <ul class="social mb-0 list-inline mt-3">
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                        <button type="button" class="btn btn-primary mt-3">View Profile</button>
                    </div>
                </div>
            </div>--%>
            <div class="row py-5">
                <div class="col-lg-4">
                    <figure class="rounded p-3 bg-white shadow-sm">
                        <img src="Doctors Images/D.jpg" alt="" class="w-100 card-img-top" height="380">
                        <figcaption class="p-4 card-img-bottom">
                            <h2 class="h5 font-weight-bold mb-2 font-italic">Dr. Jitendra Gupta</h2>
                            <p class="mb-0 text-small text-muted font-italic">General & Family Physician</p>
                            <ul class="social mb-0 list-inline mt-2">
                                <li class="list-inline-item mx-0"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                                <li class="list-inline-item mx-0"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                                <li class="list-inline-item mx-0"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                                <li class="list-inline-item mx-0"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                                <li class="list-inline-item mx-0"><a href="#" class="ml-3 btn btn-outline-dark">View Profile</a></li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-4">
                    <figure class="rounded p-3 bg-white shadow-sm">
                        <img src="Doctors Images/P.jpg" alt="" class="w-100 card-img-top" height="380">
                        <figcaption class="p-4 card-img-bottom">
                            <h2 class="h5 font-weight-bold mb-2 font-italic">Dr. Hema Srivastva</h2>
                            <p class="mb-0 text-small text-muted font-italic">General & Family Physician</p>
                            <ul class="social mb-0 list-inline mt-2">
                                <li class="list-inline-item mx-0"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                                <li class="list-inline-item mx-0"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                                <li class="list-inline-item mx-0"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                                <li class="list-inline-item mx-0"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                                <li class="list-inline-item mx-0"><a href="#" class="ml-3 btn btn-outline-dark">View Profile</a></li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
                <div class="col-lg-4">
                    <figure class="rounded p-3 bg-white shadow-sm">
                        <img src="Doctors Images/F.jpg" alt="" class="w-100 card-img-top" height="380">
                        <figcaption class="p-4 card-img-bottom">
                            <h2 class="h5 font-weight-bold mb-2 font-italic">Dr. Dilip Josi</h2>
                            <p class="mb-0 text-small text-muted font-italic">General Surgeon</p>
                            <ul class="social mb-0 list-inline mt-2">
                                <li class="list-inline-item mx-0"><a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a></li>
                                <li class="list-inline-item mx-0"><a href="#" class="social-link"><i class="fa fa-twitter"></i></a></li>
                                <li class="list-inline-item mx-0"><a href="#" class="social-link"><i class="fa fa-instagram"></i></a></li>
                                <li class="list-inline-item mx-0"><a href="#" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                                <li class="list-inline-item mx-0"><a href="#" class="ml-3 btn btn-outline-dark">View Profile</a></li>
                            </ul>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </div>
    </section>
    <%--Frequently Asked Question--%>
    <section id="faq" class="faq section-bg bg-light">
        <div class="container">
            <div class="section-title">
                <h2>Frequently Asked Questions</h2>
                <%--<p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>--%>
            </div>
            <div class="faq-list">
                <ul>
                    <li data-aos="fade-up">
                        <i class="bx bx-help-circle icon-help"></i><a data-toggle="collapse" class="collapsed" href="#faq-list-1">COVID 19 And Diabetes: 5 Steps To Stay Safe!<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="faq-list-1" class="collapse show" data-parent=".faq-list">
                            <p>
                                The Novel Coronavirus (COVID-19) is a very contagious coronavirus with high fatality rates. People with suppressed immunity and other comorbid conditions like diabetes, high blood pressure, stroke, heart disease, lung disease, cancer, renal disease, etc., are particularly at risk of developing critical stage symptoms. If you are a person with diabetes, you are more at a risk of COVID 19 because of fluctuating blood sugar levels and associated complications. Here are 5 ways to keep oneselfone protected!
                            </p>
                        </div>
                    </li>
                    <li data-aos="fade-up" data-aos-delay="100">
                        <i class="bx bx-help-circle icon-help"></i><a data-toggle="collapse" href="#faq-list-2" class="collapsed">My Hands And Feet Are Always Cold! Can It Be A Sign Of Thyroid?<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="faq-list-2" class="collapse" data-parent=".faq-list">
                            <p>
                                Are your hands and feet perpetually chilly most of the time? Do you often feel colder than other people you live or work with? Well, everyone has slightly different adaptation to cold weather. Some people naturally tend to have cold hands and feet and feel uncomfortable while others are comfortable in the same environment.

Simply adding extra layers of clothing may relieve the feeling of being cold. But, if cool feet and hands are bothering you constantly, or you notice other symptoms such as brittle hair, dry skin or so on, you may have some underlying medical condition such as thyroid disease.
                            </p>
                        </div>
                    </li>
                    <li data-aos="fade-up" data-aos-delay="200">
                        <i class="bx bx-help-circle icon-help"></i><a data-toggle="collapse" href="#faq-list-3" class="collapsed">Lack Of Sleep Can Cause You To Gain Weight! Here's How? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="faq-list-3" class="collapse" data-parent=".faq-list">
                            <p>
                                Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna molestie at elementum eu facilisis sed odio morbi quis

                            </p>
                        </div>
                    </li>
                    <li data-aos="fade-up" data-aos-delay="300">
                        <i class="bx bx-help-circle icon-help"></i><a data-toggle="collapse" href="#faq-list-4" class="collapsed">What Happens When You Drink Too Much Water? <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="faq-list-4" class="collapse" data-parent=".faq-list">
                            <p>
                                Laoreet sit amet cursus sit amet dictum sit amet justo. Mauris vitae ultricies leo integer malesuada nunc vel. Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget lorem dolor sed. Ut venenatis tellus in metus vulputate eu scelerisque.

                            </p>
                        </div>
                    </li>
                    <li data-aos="fade-up" data-aos-delay="400">
                        <i class="bx bx-help-circle icon-help"></i><a data-toggle="collapse" href="#faq-list-5" class="collapsed">How To Pick The Right Mattress To Avoid Back Pain And Get Better Sleep! <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="faq-list-5" class="collapse" data-parent=".faq-list">
                            <p>
                                Is back pain keeping you up at most of the nights? Maybe your mattress is causing this great discomfort! Yes! You read it right! Prolonged back pain and sleep issues are very much related to the mattress you are using! If you go ignorant towards the quality of the mattress it can certainly lead to chronic health conditions such as damaged discs, insomnia, spondylosis, obstructive sleep apnea, fibromyalgia, to name a few. The right mattress will not only help you get that restful sleep but will also give you a pain-free, active life to enjoy.

To help you stay aware and avoid such serious illnesses, we have listed below all about mattress and how to pick up the right one to suit your specific needs. 
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
</asp:Content>
