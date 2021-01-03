<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralZone.Master" AutoEventWireup="true" CodeBehind="Medicine.aspx.cs" Inherits="HealthCare.Medicine" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <section>
        <div class="container-fluid px-5">
            <div class="container">
                <div class="section-title">
                    <h2>Medicine</h2>
                    <%--<p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>--%>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm">
                        <img src="Medicines/Lipvas-10mg-tablets-Cipla.jpg" height="218" width="320"/>
                        <%--<img src="https://res.cloudinary.com/mhmd/image/upload/v1556294929/matthew-hamilton-351641-unsplash_zmvozs.jpg" alt="" class="img-fluid card-img-top">--%>
                        <div class="p-4">
                            <h5><a href="#" class="text-dark">Lipvas-10</a></h5>
                            <%--<p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
                            <%--<div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPG</span></p>
                                <div class="badge badge-danger px-3 rounded-pill font-weight-normal">New</div>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm">
                        <img src="Medicines/rantidine.jpg"  height="218" width="320"/>
                        <%--<img src="https://res.cloudinary.com/mhmd/image/upload/v1556294927/cody-davis-253928-unsplash_vfcdcl.jpg" alt="" class="img-fluid card-img-top">--%>
                        <div class="p-4">
                            <h5><a href="#" class="text-dark">Rentidine 150mg</a></h5>
                            <%--<p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
                            <%--<div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">PNG</span></p>
                                <div class="badge badge-primary px-3 rounded-pill font-weight-normal">Trend</div>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm">
                        <img src="Medicines/robinax.jpg"  height="218" width="320" />
                        <%--<img src="https://res.cloudinary.com/mhmd/image/upload/v1556294928/nicole-honeywill-546848-unsplash_ymprvp.jpg" alt="" class="img-fluid card-img-top">--%>
                        <div class="p-4">
                            <h5><a href="#" class="text-dark">Robinax</a></h5>
                            <%--<p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
                            <%--<div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPG</span></p>
                                <div class="badge badge-warning px-3 rounded-pill font-weight-normal text-white">Featured</div>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm">
                        <img src="Medicines/voltarol.jpg" height="218" width="320"/>
                        <%--<img src="https://res.cloudinary.com/mhmd/image/upload/v1556294927/dose-juice-1184444-unsplash_bmbutn.jpg" alt="" class="img-fluid card-img-top">--%>
                        <div class="p-4">
                            <h5><a href="#" class="text-dark">Voltral</a></h5>
                            <%--<p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
                            <%--<div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPEG</span></p>
                                <div class="badge badge-success px-3 rounded-pill font-weight-normal">Hot</div>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm">
                        <img src="Medicines/Soframycin.jpg" height="218" width="320"/>
                        <%--<img src="https://res.cloudinary.com/mhmd/image/upload/v1556294926/cody-davis-253925-unsplash_hsetv7.jpg" alt="" class="img-fluid card-img-top">--%>
                        <div class="p-4">
                            <h5><a href="#" class="text-dark">Soframycine</a></h5>
                            <%--<p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
                           <%-- <div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">PNG</span></p>
                                <div class="badge badge-primary px-3 rounded-pill font-weight-normal">New</div>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm">
                        <img src="Medicines/antiitchcream.jpg" height="218" width="320"/>
                        <%--<img src="https://res.cloudinary.com/mhmd/image/upload/v1556294928/tim-foster-734470-unsplash_xqde00.jpg" alt="" class="img-fluid card-img-top">--%>
                        <div class="p-4">
                            <h5><a href="#" class="text-dark">AntiItch Creame</a></h5>
                            <%--<p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
                            <%--<div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPG</span></p>
                                <div class="badge badge-warning px-3 rounded-pill font-weight-normal text-white">Featured</div>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm">
                        <img src="Medicines/Betamil-Reviews-480x320.jpg"  height="218" width="320" />
                        <%--<img src="https://res.cloudinary.com/mhmd/image/upload/v1556294927/mike-meyers-737494-unsplash_yd11yq.jpg" alt="" class="img-fluid card-img-top">--%>
                        <div class="p-4">
                            <h5><a href="#" class="text-dark">Betamil</a></h5>
                            <%--<p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
                            <%--<div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPEG</span></p>
                                <div class="badge badge-info px-3 rounded-pill font-weight-normal">Hot</div>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm">
                        <img src="Medicines/clocip.jpg" height="218" width="320"/>
                        <%--<img src="https://res.cloudinary.com/mhmd/image/upload/v1556294930/ronald-cuyan-434484-unsplash_iktjid.jpg" alt="" class="img-fluid card-img-top">--%>
                        <div class="p-4">
                            <h5><a href="#" class="text-dark">Clocip.</a></h5>
                            <%--<p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
                            <%--<div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">PNG</span></p>
                                <div class="badge badge-warning px-3 rounded-pill font-weight-normal text-white">Featured</div>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm">
                        <img src="Medicines/atpar-500_tablets.jpg" height="218" width="320"/>
                        <%--<img src="https://res.cloudinary.com/mhmd/image/upload/v1556294929/matthew-hamilton-351641-unsplash_zmvozs.jpg" alt="" class="img-fluid card-img-top">--%>
                        <div class="p-4">
                            <h5><a href="#" class="text-dark">Aptar-500mg</a></h5>
                            <%--<p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
                            <%--<div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPG</span></p>
                                <div class="badge badge-danger px-3 rounded-pill font-weight-normal">New</div>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm">
                        <img src="Medicines/benylin.jpg" height="218" width="320"/>
                        <%--<img src="https://res.cloudinary.com/mhmd/image/upload/v1556294927/cody-davis-253928-unsplash_vfcdcl.jpg" alt="" class="img-fluid card-img-top">--%>
                        <div class="p-4">
                            <h5><a href="#" class="text-dark">Benylin</a></h5>
                            <%--<p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
                            <%--<div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">PNG</span></p>
                                <div class="badge badge-primary px-3 rounded-pill font-weight-normal">Trend</div>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm">
                        <img src="Medicines/proseloc-tablet.jpg" height="218" width="320" />
                        <%--<img src="https://res.cloudinary.com/mhmd/image/upload/v1556294928/nicole-honeywill-546848-unsplash_ymprvp.jpg" alt="" class="img-fluid card-img-top">--%>
                        <div class="p-4">
                            <h5><a href="#" class="text-dark">Proseloc Tablet</a></h5>
                            <%--<p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
                            <%--<div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPG</span></p>
                                <div class="badge badge-warning px-3 rounded-pill font-weight-normal text-white">Featured</div>
                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 mb-4">
                    <div class="bg-white rounded shadow-sm">
                        <img src="Medicines/rapidrelief_0.jpg" height="218" width="320" />
                        <%--<img src="https://res.cloudinary.com/mhmd/image/upload/v1556294927/dose-juice-1184444-unsplash_bmbutn.jpg" alt="" class="img-fluid card-img-top">--%>
                        <div class="p-4">
                            <h5><a href="#" class="text-dark">Rapid Relief</a></h5>
                            <%--<p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>--%>
                            <%--<div class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
                                <p class="small mb-0"><i class="fa fa-picture-o mr-2"></i><span class="font-weight-bold">JPEG</span></p>
                                <div class="badge badge-success px-3 rounded-pill font-weight-normal">Hot</div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
            <%--<div class="py-3 text-right"><a href="#" class="btn btn-dark px-5 py-3 text-uppercase">Show me more</a></div>--%>
        </div>
    </section>
</asp:Content>
