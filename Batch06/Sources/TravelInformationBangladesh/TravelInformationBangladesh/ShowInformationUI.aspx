<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowInformationUI.aspx.cs" Inherits="TravelInformationBangladesh.ShowInformationUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Show Information Page</title>
    <link href="../Content/ShowInformation.css" rel="stylesheet" />
    <link href="Content/font-awesome.min.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid wrapping">
            <div class="row">
                <div class="jumbotron jumbtron">
                    <div class="row ">
                        <div class="navbar-default heading">
                            <ul class="navbar-left">
                                <li>
                                    <asp:Button ID="btnHome" CssClass="anchor" runat="server" Text="Home" />
                                </li>
                            </ul>
                            <ul class="navbar-right menu2">
                                <li>
                                    <asp:Button ID="btnViewWebsite" CssClass="anchor" runat="server" Text="View Website" />
                                </li>
                                <li>
                                    <asp:Button ID="btnLogout" CssClass="anchor" runat="server" Text="Logout" />
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="row bodycontent">
                        <div class="col-md-3 navmenu">
                            <h3>Add Information</h3>
                            <%--<ul>
                                <li><a href="#" runat="server">Home</a></li>
                                <li><a href="#" runat="server">ADD Division</a></li>
                                <li><a href="#" runat="server">Add District</a></li>
                                <li><a href="#" runat="server">Add Upazilla</a></li>
                                <li><a href="#" runat="server">Add Tourist Spot</a></li>
                                <li><a href="#" runat="server">Add Resort</a></li>
                                <li><a href="#" runat="server">Add Restaurant</a></li>
                                <li><a href="#" runat="server">Add Hospital</a></li>
                                <li><a href="#" runat="server">Add Police Stattion</a></li>
                            </ul>--%>
                            <!--Asp.net button-->
                            <div class="btn-group-vertical ">
                                <asp:Button ID="btnAddHome" CssClass="btn btn-primary btnAdd" runat="server" Text="Home" />
                                <asp:Button ID="btnAddDivision" CssClass="btn btn-primary btnAdd" runat="server" Text="Add Division" />
                                <asp:Button ID="btnAddDistrict" CssClass="btn btn-primary btnAdd" runat="server" Text="Add District" />
                                <asp:Button ID="btnAddFromUpazilla" CssClass="btn btn-primary btnAdd" runat="server" Text="Add From Upazilla" />
                                <asp:Button ID="btnAddDestinationUpazilla" CssClass="btn btn-primary btnAdd" runat="server" Text="Add Destination Upazilla" />
                                <asp:Button ID="btnAddTouristSpot" CssClass="btn btn-primary btnAdd" runat="server" Text="Add Tourist Spot" />
                                <asp:Button ID="btnAddResort" CssClass="btn btn-primary btnAdd" runat="server" Text="Add Resort" />
                                <asp:Button ID="btnAddRestaurant" CssClass="btn btn-primary btnAdd" runat="server" Text="Add Restaurant" />
                                <asp:Button ID="btnAddHospial" CssClass="btn btn-primary btnAdd" runat="server" Text="Add Hospital" />
                                <asp:Button ID="btnAddPoliceStation" CssClass="btn btn-primary btnAdd" runat="server" Text="Add Police Station" />
                            </div>
                            <h3>Show Information</h3>
                            <div class="btn-group-vertical ">
                                <asp:Button ID="btnShowUser" CssClass="btn btn-primary btnAdd" runat="server" Text="User" />
                                <asp:Button ID="btnShowComment" CssClass="btn btn-primary btnAdd" runat="server" Text="Comment" />
                                <asp:Button ID="btnShowDivision" CssClass="btn btn-primary btnAdd" runat="server" Text="Show Division" OnClick="btnShowDivision_Click" />
                                <asp:Button ID="btnShowDistrict" CssClass="btn btn-primary btnAdd" runat="server" Text="Show District" />
                                <asp:Button ID="btnShowFromUpazilla" CssClass="btn btn-primary btnAdd" runat="server" Text="Show From Upazilla" />
                                <asp:Button ID="btnShowDestinationUpazilla" CssClass="btn btn-primary btnAdd" runat="server" Text="Show Destination Upazilla" />
                                <asp:Button ID="btnShowTouristSpot" CssClass="btn btn-primary btnAdd" runat="server" Text="Show Tourist Spot" />
                                <asp:Button ID="btnShowResort" CssClass="btn btn-primary btnAdd" runat="server" Text="Show Resort" />
                                <asp:Button ID="btnShowRestaurant" CssClass="btn btn-primary btnAdd" runat="server" Text="Show Restaurant" />
                                <asp:Button ID="btnShowHospital" CssClass="btn btn-primary btnAdd" runat="server" Text="Show Hospital" />
                                <asp:Button ID="btnShowPoliceStation" CssClass="btn btn-primary btnAdd" runat="server" Text="Show Police Station" />
                                <asp:Button ID="btnShowAllTouristInformation" CssClass="btn btn-primary btnAdd" runat="server" Text="Show All Tourist Information" />
                            </div>
                        </div>
                        <div class="col-md-9 content">
                            <h3>Main content goes</h3>
                            <!--1st row-->
                            <div class="row division">
                                <!--1st column start-->
                                <div class="col-md-2">
                                </div>
                                <!--1st column end-->

                                <!--2nd column start-->
                                <div class="col-md-8">
                                    <asp:GridView ID="gVShowDivision" CssClass="gridview" runat="server" AutoGenerateColumns="False">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Division ID" HeaderStyle-CssClass="head" ItemStyle-CssClass="item">
                                                <ItemTemplate>
                                                    <%#Eval("DivisionId") %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Division Name" HeaderStyle-CssClass="head" ItemStyle-CssClass="item">
                                                <ItemTemplate>
                                                    <%#Eval("DivisionName") %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                                <!--2nd column start-->
                                <!--3rd column start-->
                                <div class="col-md-2">
                                </div>
                                <!--3rd column start-->
                            </div>
                            <!--1st row end-->

                        </div>
                    </div>
                    <div class="row footercontent">
                        <h3>Copyright &copy; 2016 <a href="#" target="_blank">Travel Information Bangladesh</a>. All Rights Reserved.</h3>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

