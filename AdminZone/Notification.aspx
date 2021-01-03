<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Notification.aspx.cs" Inherits="HealthCare.AdminZone.Notification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="p-4">
        <h2 class="h2 d-none d-sm-block">Notification Dashboard</h2>
        <%--<p class="lead d-none d-sm-block">Plus off-canvas sidebar, based on Bootstrap v4</p>--%>
        <div class="shadow p-3 bg-white rounded">
            <div class="row p-3">
                <div class="col-lg-12">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" href="#home1" role="tab" data-toggle="tab">Notifications</a>
                        </li>
                        <%--<li class="nav-item">
                    <a class="nav-link" href="#profile1" role="tab" data-toggle="tab">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#messages1" role="tab" data-toggle="tab">Messages</a>
                </li>--%>
                        <li class="nav-item">
                            <a class="nav-link" href="#settings1" role="tab" data-toggle="tab">Change Password</a>
                        </li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <br>
                        <div role="tabpanel" class="tab-pane active bg-light p-3" id="home1">
                            <form>
                                <div class="form-group">
                                    <label for="inputAddress" class="h4">Notification</label>
                                    <textarea class="form-control" rows="4" id="inputAddress" placeholder="Notification "></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Update</button>
                            </form>
                        </div>
                        <%--<div role="tabpanel" class="tab-pane" id="profile1">
                    <h4>Pro</h4>
                    <p>
                        2. Tabs are helpful to hide or collapse some addtional content.
                    </p>
                </div>
                <div role="tabpanel" class="tab-pane" id="messages1">
                    <h4>Messages</h4>
                    <p>
                        3. You can really put whatever you want into the tab pane.
                    </p>
                </div>--%>
                        <div role="tabpanel" class="tab-pane bg-light p-3" id="settings1">
                            <form>
                                <div class="form-group">
                                    <label for="inputAddress" class="h6">Current Password</label>
                                    <input type="password" class="form-control" id="inputAddress1" >
                                </div>
                                <div class="form-group">
                                    <label for="inputAddress2" class="h6">New Password</label>
                                    <input type="password" class="form-control" id="inputAddress2">
                                </div>
                                <button type="submit" class="btn btn-primary">Change Password</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
