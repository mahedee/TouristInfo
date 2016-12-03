using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelInformationBangladesh.BLL;
using TravelInformationBangladesh.Model;

namespace TravelInformationBangladesh
{
    public partial class AddInformationUI : System.Web.UI.Page
    {
        DivisionManager divisionManager = new DivisionManager();
        DistrictManager districtManager = new DistrictManager();
        FromUpazilaManager fromUpazilaManager = new FromUpazilaManager();
        DestinationUpazilamanager destinationUpazilaManager = new DestinationUpazilamanager();
        TouristSpotManager touristSpotManager = new TouristSpotManager();
        ResortManager resortManager = new ResortManager();
        RestaurantManager restaurantManager = new RestaurantManager();
        HospitalManager hospitalManager = new HospitalManager();
        PoliceStationManager policeStationManager = new PoliceStationManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //for division dropdown box under District save Button
                ddlDivisionId.DataTextField = "DivisionName";
                ddlDivisionId.DataValueField = "DivisionId";
                ddlDivisionId.DataSource = divisionManager.GetAllDivisions();
                ddlDivisionId.DataBind(); 

                //for district dropdown box under FromUpazila Save Button
                ddlDistrictId.DataTextField = "DistrictName";
                ddlDistrictId.DataValueField = "DistrictId";
                ddlDistrictId.DataSource = districtManager.GetAllDistricts();
                ddlDistrictId.DataBind();

                //for district dropdown box under DestinationUpazila Save Button
                ddlDistrictId2.DataTextField = "DistrictName";
                ddlDistrictId2.DataValueField = "DistrictId";
                ddlDistrictId2.DataSource = districtManager.GetAllDistricts();
                ddlDistrictId2.DataBind();

                //for touristSpot dropdown under Resort Save Button
                ddlTouristSpotId.DataTextField = "TouristSpotName";
                ddlTouristSpotId.DataValueField = "TouristSpotId";
                ddlTouristSpotId.DataSource = touristSpotManager.GetAllTouristSpot();
                ddlTouristSpotId.DataBind();

                //for touristSpot dropdown under Restaurant Save Button
                ddlTouristSpotWithRestaurant.DataTextField = "TouristSpotName";
                ddlTouristSpotWithRestaurant.DataValueField = "TouristSpotId";
                ddlTouristSpotWithRestaurant.DataSource = touristSpotManager.GetAllTouristSpot();
                ddlTouristSpotWithRestaurant.DataBind();

                //for touristSpot dropdown under Hospital Save Button
                ddlTouristSpotWithHospital.DataTextField = "TouristSpotName";
                ddlTouristSpotWithHospital.DataValueField = "TouristSpotId";
                ddlTouristSpotWithHospital.DataSource = touristSpotManager.GetAllTouristSpot();
                ddlTouristSpotWithHospital.DataBind();

                //for touristSpot dropdown under Police Station Save Button
                ddlTouristSpotWithPoliceStation.DataTextField = "TouristSpotName";
                ddlTouristSpotWithPoliceStation.DataValueField = "TouristSpotId";
                ddlTouristSpotWithPoliceStation.DataSource = touristSpotManager.GetAllTouristSpot();
                ddlTouristSpotWithPoliceStation.DataBind();
            }
        }

        // Division Save Button Code here......
        protected void btnSaveDivision_Click(object sender, EventArgs e)
        {
            if (txtDivisionName.Text == string.Empty)
            {
                lblDivision.Text = "Text Box Can not be null";
            }
            else
            {
                string divisionName = txtDivisionName.Text.ToUpper();
                Division division = new Division(divisionName);

                lblDivision.Text = divisionManager.SaveDivision(division);

                //clear all data from form
                //Response.Redirect(Request.Url.AbsoluteUri);

            }
        }

        // District Save Button Code here......
        protected void btnSaveDistrict_Click(object sender, EventArgs e)
        {
            if (txtDistrictName.Text == string.Empty)
            {
                lblDistrict.Text = "Text Box Can not be null";
            }
            else
            {
                string districtName = txtDistrictName.Text.ToUpper();
                int divisionId = Convert.ToInt32(ddlDivisionId.SelectedValue);
                District district = new District(districtName, divisionId);

                lblDistrict.Text = districtManager.SaveDistrict(district);
            }
            
        }

        //District Save Button With Division Dropdown Box Code here..
        protected void ddlDivisionId_SelectedIndexChanged(object sender, EventArgs e)
        {
            int divisionId = Convert.ToInt32(ddlDivisionId.SelectedValue);
            Division division = divisionManager.GetDivisionById(divisionId);

        }

        //From Upazila Save Button Code here.......
        protected void btnSaveFromUpazilla_Click(object sender, EventArgs e)
        {
            if (txtFromUpazillaName.Text==string.Empty)
            {
                lblFromUpazila.Text = "Text Boxcan not be null";
            }
            else
            {
                string fromUpazilaName = txtFromUpazillaName.Text.ToUpper();
                int districtId = Convert.ToInt32(ddlDistrictId.SelectedValue);
                FromUpazila fromUpazila = new FromUpazila(fromUpazilaName, districtId);
                lblFromUpazila.Text = fromUpazilaManager.SaveFromUpazila(fromUpazila);

            }
            
            //Display success message and clear the form.
            //string message = "Your details have been saved successfully.";
            //string script = "window.onload = function(){ alert('";
            //script += message;
            //script += "');";
            //script += "window.location = '";
            //script += Request.Url.AbsoluteUri;
            //script += "'; }";
            //ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);

        }

        //From Upazila Save Button with District Dropdown box Code here.......
        protected void ddlDistrictId_SelectedIndexChanged(object sender, EventArgs e)
        {
            int districtId = Convert.ToInt32(ddlDistrictId.SelectedValue);
            District district = districtManager.GetDistrictById(districtId);
        }

        //Destination Upazila Button Code here.....
        protected void btnSaveDestinationUpazilla_Click(object sender, EventArgs e)
        {
            if (txtDestinationUpazillaName.Text==string.Empty)
            {
                lblDestinationUpazila.Text = "Textbox can not be null";
            }
            else
            {
                string destinationUpazilaName = txtDestinationUpazillaName.Text.ToUpper();
                int districtId = Convert.ToInt32(ddlDistrictId.SelectedValue);
                DestinationUpazila destinationUpazila = new DestinationUpazila(destinationUpazilaName, districtId);
                lblDestinationUpazila.Text = destinationUpazilaManager.SaveDestinationUpazila(destinationUpazila);
            }
        }

        //Destination Upazila Save Button with District Dropdown box Code here.......
        protected void ddlDistrictId2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int districtId = Convert.ToInt32(ddlDistrictId.SelectedValue);
            District district = districtManager.GetDistrictById(districtId);
        }

        protected void btnSaveTouristSpot_Click(object sender, EventArgs e)
        {
            if (txtTouristSpotName.Text==string.Empty || txtTouristSpotInfo.Text==string.Empty ||txtCommunication.Text==string.Empty)
            {
                lblTouristSpot.Text = "TextBox can not be empty";
            }
            else
            {
                string touristSpotName = txtTouristSpotName.Text.ToUpper();
                string touristSpotInformation = txtTouristSpotInfo.Text;
                string communication = txtCommunication.Text;

                TouristSpot touristSpot = new TouristSpot(touristSpotName, touristSpotInformation,communication);
                lblTouristSpot.Text = touristSpotManager.SaveTouristSpot(touristSpot);

            }
        }

        //Resort Save Button Code here.....
        protected void btnSaveResort_Click(object sender, EventArgs e)
        {
            if (txtResortName.Text==string.Empty || txtResortInformation.Text==string.Empty)
            {
                lblResort.Text = "TextBox can not be empty";   
            }
            else
            {
                string resortName = txtResortName.Text;
                string resortInformation = txtResortInformation.Text;
                int touristSpotId = Convert.ToInt32(ddlTouristSpotId.SelectedValue);
                Resort resort = new Resort(resortName, resortInformation, touristSpotId);
                lblResort.Text = resortManager.SaveResort(resort);
            }
        }

        //Resort Save Button with tourist spot Dropdown box Code here.......
        protected void ddlTouristSpotId_SelectedIndexChanged(object sender, EventArgs e)
        {
            int touristSpotId = Convert.ToInt32(ddlTouristSpotId.SelectedValue);
            TouristSpot touristSpot = touristSpotManager.TouristSpotById(touristSpotId);
        }

        //Restaurant Save Button Code here.....
        protected void btnSaveRestaurant_Click(object sender, EventArgs e)
        {
            if (txtRestaurantName.Text == string.Empty || txtRestaurantInformation.Text == string.Empty)
            {
                lblRestaurant.Text = "TextBox can not be empty";
            }
            else
            {
                string restaurantName = txtRestaurantName.Text;
                string restaurantInformation = txtRestaurantInformation.Text;
                int touristSpotId = Convert.ToInt32(ddlTouristSpotId.SelectedValue);
                Restaurant restaurant = new Restaurant(restaurantName, restaurantInformation, touristSpotId);
                lblRestaurant.Text = restaurantManager.SaveRestaurant(restaurant);
            }
        }

        //Restaurant Save Button with tourist spot Dropdown box Code here.......
        protected void ddlTouristSpotWithRestaurant_SelectedIndexChanged(object sender, EventArgs e)
        {
            int touristSpotId = Convert.ToInt32(ddlTouristSpotId.SelectedValue);
            TouristSpot touristSpot = touristSpotManager.TouristSpotById(touristSpotId);
        }

        //Hospital Save Button Code here.....
        protected void btnSaveHospital_Click(object sender, EventArgs e)
        {
            if (txtHospitalName.Text == string.Empty || txtHospitalInformation.Text == string.Empty)
            {
                lblHospital.Text = "TextBox can not be empty";
            }
            else
            {
                string hospitalName = txtHospitalName.Text;
                string hospitalInformation = txtHospitalInformation.Text;
                int touristSpotId = Convert.ToInt32(ddlTouristSpotId.SelectedValue);
                Hospital hospital = new Hospital(hospitalName, hospitalInformation, touristSpotId);
                lblHospital.Text = hospitalManager.SaveHospital(hospital);
            }
        }

        //Hospital Save Button with tourist spot Dropdown box Code here.......
        protected void ddlTouristSpotWithHospital_SelectedIndexChanged(object sender, EventArgs e)
        {
            int touristSpotId = Convert.ToInt32(ddlTouristSpotId.SelectedValue);
            TouristSpot touristSpot = touristSpotManager.TouristSpotById(touristSpotId);
        }

        //Police Station Save Button Code here.....
        protected void btnSavePoliceStation_Click(object sender, EventArgs e)
        {
            if (txtPoliceStationName.Text == string.Empty || txtPoliceStationInformation.Text == string.Empty)
            {
                lblPoliceStation.Text = "TextBox can not be empty";
            }
            else
            {
                string policeStationName = txtPoliceStationName.Text;
                string policeStationInformation = txtPoliceStationInformation.Text;
                int touristSpotId = Convert.ToInt32(ddlTouristSpotId.SelectedValue);
                PoliceStation policeStation = new PoliceStation(policeStationName, policeStationInformation, touristSpotId);
                lblPoliceStation.Text = policeStationManager.SavePoliceStation(policeStation);
            }
        }

        //Police Station Save Button with tourist spot Dropdown box Code here.......
        protected void ddlTouristSpotWithPoliceStation_SelectedIndexChanged(object sender, EventArgs e)
        {
            int touristSpotId = Convert.ToInt32(ddlTouristSpotId.SelectedValue);
            TouristSpot touristSpot = touristSpotManager.TouristSpotById(touristSpotId);
        }
    }
}