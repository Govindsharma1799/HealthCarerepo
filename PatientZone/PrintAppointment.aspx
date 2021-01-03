<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintAppointment.aspx.cs" Inherits="HealthCare.PatientZone.PrintAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #invoice {
            padding: 30px;
        }

        .invoice {
            position: relative;
            background-color: #FFF;
            min-height: 680px;
            padding: 15px
        }

            .invoice header {
                padding: 10px 0;
                margin-bottom: 20px;
                border-bottom: 1px solid #3989c6
            }

            .invoice .company-details {
                text-align: right
            }

                .invoice .company-details .name {
                    margin-top: 0;
                    margin-bottom: 0
                }

            .invoice .contacts {
                margin-bottom: 20px
            }

            .invoice .invoice-to {
                text-align: left
            }

                .invoice .invoice-to .to {
                    margin-top: 0;
                    margin-bottom: 0
                }

            .invoice .invoice-details {
                text-align: right
            }

                .invoice .invoice-details .invoice-id {
                    margin-top: 0;
                    color: #3989c6
                }

            .invoice main {
                padding-bottom: 50px
            }

                .invoice main .thanks {
                    margin-top: -100px;
                    font-size: 2em;
                    margin-bottom: 50px
                }

                .invoice main .notices {
                    padding-left: 6px;
                    border-left: 6px solid #3989c6
                }

                    .invoice main .notices .notice {
                        font-size: 1.2em
                    }

            .invoice footer {
                width: 100%;
                text-align: center;
                color: #777;
                border-top: 1px solid #aaa;
                padding: 8px 0
            }

        @media print {
            .invoice {
                font-size: 11px !important;
                overflow: hidden !important
            }

                .invoice footer {
                    position: absolute;
                    bottom: 10px;
                    page-break-after: always
                }

                .invoice > div:last-child {
                    page-break-before: always
                }
        }
    </style>
    <script>
        function PrintPage() {
            var status = confirm("Are You Want To Print Appointment ?");
            if (status == true) {
                window.print();
            } else {
                alert("Thank You");
            }
            window.location.href = 'PatientIndex.aspx';
        }
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.min.css" integrity="sha512-oc9+XSs1H243/FRN9Rw62Fn8EtxjEYWHXRvjS43YtueEewbS6ObfXcJNyohjHqVKFPoXXUxwc+q1K7Dee6vv9g==" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
</head>
<body onload="PrintPage()">
    <form id="form1" runat="server">
        <div id="invoice">
            <div class="invoice overflow-auto">
                <div style="min-width: 600px">
                    <header>
                        <div class="row">
                            <div class="col">
                                <a target="_blank" href="https://lobianijs.com">
                                    <img src="http://lobianijs.com/lobiadmin/version/1.0/ajax/img/logo/lobiadmin-logo-text-64.png" data-holder-rendered="true" /></a>
                            </div>
                            <div class="col company-details">
                                <h2 class="name"><a target="_blank" href="https://lobianijs.com">Health Care</a></h2>
                                <div>NH-12 Ujjain Road, Indore</div>
                                <div>healthcare@hospital.com</div>
                                <div>(+91) 1234567890</div>
                            </div>
                        </div>
                    </header>
                    <main>
                        <div class="table-responsive-md">
                            <table class="table table-borderless">
                                <tbody>
                                    <tr>
                                        <th scope="row">
                                            <asp:Label Text="Patient Name" runat="server" />
                                        </th>
                                        <td>
                                            <asp:Label ID="LblPatientName" runat="server" />
                                        </td>
                                        <th scope="row">
                                            <asp:Label Text="Father Name" runat="server" />
                                        </th>
                                        <td>
                                            <asp:Label ID="LblFatherName" runat="server" />
                                        </td>
                                        <th scope="row">
                                            <asp:Label Text="Mobile No" runat="server" />
                                        </th>
                                        <td>
                                            <asp:Label ID="LblMobile" runat="server" />
                                        </td>
                                        <th scope="row">
                                            <asp:Label Text="Age" runat="server" />
                                        </th>
                                        <td>
                                            <asp:Label ID="LblAge" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                            <asp:Label Text="Department" runat="server" />
                                        </th>
                                        <td>
                                            <asp:Label ID="LblDepartment" runat="server" />
                                        </td>
                                        <th scope="row">
                                            <asp:Label Text="Patient Type" runat="server" />
                                        </th>
                                        <td>
                                            <asp:Label ID="LblPatientType" runat="server" />
                                        </td>
                                        <th scope="row">
                                            <asp:Label Text="Blood Group" runat="server" />
                                        </th>
                                        <td>
                                            <asp:Label ID="LblBlood" runat="server" />
                                        </td>
                                        <th scope="row">
                                            <asp:Label Text="Appointment Booking" runat="server" />
                                        </th>
                                        <td>
                                            <asp:Label ID="LblAppointment" runat="server" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="table-responsive-md">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <th scope="row" class="border-right w-25">
                                            <asp:Label Text="Tests" runat="server" />
                                        </th>
                                        <th scope="row">
                                            <asp:Label Text="Rx" runat="server" />
                                        </th>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </main>
                    <footer>Invoice was created on a computer and is valid without the signature and seal.</footer>
                </div>
                <!--DO NOT DELETE THIS div. IT is responsible for showing footer always at the bottom-->
                <div></div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.3/js/bootstrap.bundle.min.js" integrity="sha512-iceXjjbmB2rwoX93Ka6HAHP+B76IY1z0o3h+N1PeDtRSsyeetU3/0QKJqGyPJcX63zysNehggFwMC/bi7dvMig==" crossorigin="anonymous"></script>
</body>
</html>
