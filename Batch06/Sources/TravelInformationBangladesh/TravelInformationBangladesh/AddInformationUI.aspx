<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddInformationUI.aspx.cs" Inherits="TravelInformationBangladesh.AddInformationUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Add Information Page</title>
    <link href="../Content/AddInformation.css" rel="stylesheet" />
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
                                <asp:Button ID="btnShowDivision" CssClass="btn btn-primary btnAdd" runat="server" Text="Show Division" />
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
                            <%--<h3>Main content goes</h3>--%>
                            <div class="row division">
                                <div class="col-md-6">
                                    <table class="table table-bordered ">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text="Division Name:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtDivisionName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblDivision" CssClass="status" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnSaveDivision" CssClass="btnpadding btn btn-primary" runat="server" Text="Save" OnClick="btnSaveDivision_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>

                                <div class="col-md-6">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text="District Name:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtDistrictName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="Division"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlDivisionId" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlDivisionId_SelectedIndexChanged">
                                                    <asp:ListItem>Select Division</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblDistrict" CssClass="status" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnSaveDistrict" CssClass="btnpadding btn btn-primary" runat="server" Text="Save" OnClick="btnSaveDistrict_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>

                            </div>

                            <!--2nd row-->
                            <div class="row division">
                                <div class="col-md-6">
                                    <table class="table table-bordered ">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text="From Upazilla Name:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtFromUpazillaName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text="District"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlDistrictId" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlDistrictId_SelectedIndexChanged">
                                                    <asp:ListItem>Select District</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblFromUpazila" CssClass="status" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnSaveFromUpazilla" CssClass="btnpadding btn btn-primary" runat="server" Text="Save" OnClick="btnSaveFromUpazilla_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-md-6">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text="Destination Upazilla Name:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtDestinationUpazillaName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" Text="District"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlDistrictId2" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlDistrictId2_SelectedIndexChanged">
                                                    <asp:ListItem>Select District</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblDestinationUpazila" CssClass="status" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnSaveDestinationUpazilla" CssClass="btnpadding btn btn-primary" runat="server" Text="Save" OnClick="btnSaveDestinationUpazilla_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <!--End 2nd row-->

                            <!--3nd row-->
                            <div class="row division">
                                <div class="col-md-6">
                                    <table class="table table-bordered ">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label8" runat="server" Text="Tourist Spot Name"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtTouristSpotName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label9" runat="server" Text="Tourist Spot Information"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtTouristSpotInfo" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label12" runat="server" Text="Communication"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCommunication" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblTouristSpot" CssClass="status" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnSaveTouristSpot" CssClass="btnpadding btn btn-primary" runat="server" Text="Save" OnClick="btnSaveTouristSpot_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-md-6">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label10" runat="server" Text="Resort Name"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtResortName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label13" runat="server" Text="Resort Infornation"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtResortInformation" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label11" runat="server" Text="Tourist Spot Name"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlTouristSpotId" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlTouristSpotId_SelectedIndexChanged">
                                                    <asp:ListItem>Select Tourist Spot</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblResort" CssClass="status" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnSaveResort" CssClass="btnpadding btn btn-primary" runat="server" Text="Save" OnClick="btnSaveResort_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <!--End 3rd row-->

                            <!--4th row-->
                            <div class="row division">
                                <div class="col-md-6">
                                    <table class="table table-bordered ">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label14" runat="server" Text="Restaurant Name"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtRestaurantName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label15" runat="server" Text="Restaurant Information"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtRestaurantInformation" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label16" runat="server" Text="Tourist Spot Name"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlTouristSpotWithRestaurant" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlTouristSpotWithRestaurant_SelectedIndexChanged">
                                                    <asp:ListItem>Select Tourist Spot</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblRestaurant" CssClass="status" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnSaveRestaurant" CssClass="btnpadding btn btn-primary" runat="server" Text="Save" OnClick="btnSaveRestaurant_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-md-6">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label17" runat="server" Text="Hospital Name"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtHospitalName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" Text="Hospital Infornation"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtHospitalInformation" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label19" runat="server" Text="Tourist Spot Name"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlTouristSpotWithHospital" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlTouristSpotWithHospital_SelectedIndexChanged">
                                                    <asp:ListItem>Select Tourist Spot</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblHospital" CssClass="status" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnSaveHospital" CssClass="btnpadding btn btn-primary" runat="server" Text="Save" OnClick="btnSaveHospital_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <!--4th row end-->

                            <!--5th row-->
                            <div class="row division">
                                <div class="col-md-6">
                                    <table class="table table-bordered ">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label20" runat="server" Text="Police Station Name"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtPoliceStationName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label21" runat="server" Text="Police Station Information"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtPoliceStationInformation" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label22" runat="server" Text="Tourist Spot Name"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlTouristSpotWithPoliceStation" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlTouristSpotWithPoliceStation_SelectedIndexChanged">
                                                    <asp:ListItem>Select Tourist Spot</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblPoliceStation" CssClass="status" runat="server" Text=""></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Button ID="btnSavePoliceStation" CssClass="btnpadding btn btn-primary" runat="server" Text="Save" OnClick="btnSavePoliceStation_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <!--5th row end-->

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
