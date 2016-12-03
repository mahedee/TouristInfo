using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace TravelInformationBangladesh
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlFromDivision.DataSource = GetData("spGetDivision", null);
                ddlFromDivision.DataBind();

                ListItem liDivision = new ListItem("Select Division", "-1");
                ddlFromDivision.Items.Insert(0, liDivision);

                ListItem liDistrict = new ListItem("Select District", "-1");
                ddlFromDistrict.Items.Insert(0, liDistrict);

                ListItem liUpazila = new ListItem("Select Upazila", "-1");
                ddlFromUpazila.Items.Insert(0, liUpazila);

                ddlFromDistrict.Enabled = false;
                ddlFromUpazila.Enabled = false;

                //Destination part for initial page Load
                ddlDestDivision.DataSource = GetData("spGetDivision", null);
                ddlDestDivision.DataBind();

                ListItem liDestDivision = new ListItem("Select Division", "-1");
                ddlDestDivision.Items.Insert(0, liDestDivision);

                ListItem liDestDistrict = new ListItem("Select District", "-1");
                ddlDestDistrict.Items.Insert(0, liDestDistrict);

                ListItem liDestUpazila = new ListItem("Select Upazila", "-1");
                ddlDestUpazila.Items.Insert(0, liDestUpazila);

                ddlDestDistrict.Enabled = false;
                ddlDestUpazila.Enabled = false;
            }
        }

        //Method for Data Retrieve
        private DataSet GetData(string SPName, SqlParameter SPParameter)
        {
            string CS = WebConfigurationManager.ConnectionStrings["TravelInformationBangladeshDBConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter(SPName, con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (SPParameter != null)
            {
                da.SelectCommand.Parameters.Add(SPParameter);
            }

            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }

        protected void ddlFromDivision_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlFromDivision.SelectedIndex == 0)
            {
                ddlFromDistrict.SelectedIndex = 0;
                ddlFromDistrict.Enabled = false;

                ddlFromUpazila.SelectedIndex = 0;
                ddlFromUpazila.Enabled = false;
            }
            else
            {
                ddlFromDistrict.Enabled = true;
                SqlParameter parameter = new SqlParameter("@DivisionId", ddlFromDivision.SelectedValue);
                DataSet ds = GetData("spGetDistrictByDivisionId", parameter);

                ddlFromDistrict.DataSource = ds;
                ddlFromDistrict.DataBind();

                ListItem liDistrict = new ListItem("Select District", "-1");
                ddlFromDistrict.Items.Insert(0, liDistrict);

                ddlFromUpazila.SelectedIndex = 0;
                ddlFromUpazila.Enabled = false;
            }
        }

        protected void ddlFromDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlFromDistrict.SelectedIndex == 0)
            {
                ddlFromUpazila.SelectedIndex = 0;
                ddlFromUpazila.Enabled = false;
            }
            else
            {
                ddlFromUpazila.Enabled = true;
                SqlParameter parameter = new SqlParameter("@DistrictId", ddlFromDistrict.SelectedValue);
                DataSet ds = GetData("spGetUpazilaByDistrictId", parameter);

                ddlFromUpazila.DataSource = ds;
                ddlFromUpazila.DataBind();

                ListItem liUpazila = new ListItem("Select Upazila", "-1");
                ddlFromUpazila.Items.Insert(0, liUpazila);

            }
        }

        protected void ddlFromUpazila_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void ddlDestDivision_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDestDivision.SelectedIndex == 0)
            {
                ddlDestDistrict.SelectedIndex = 0;
                ddlDestDistrict.Enabled = false;

                ddlDestUpazila.SelectedIndex = 0;
                ddlDestUpazila.Enabled = false;
            }
            else
            {
                ddlDestDistrict.Enabled = true;
                SqlParameter parameter = new SqlParameter("@DivisionId", ddlDestDivision.SelectedValue);
                DataSet ds = GetData("spGetDistrictByDivisionId", parameter);

                ddlDestDistrict.DataSource = ds;
                ddlDestDistrict.DataBind();

                ListItem liDestDistrict = new ListItem("Select District", "-1");
                ddlDestDistrict.Items.Insert(0, liDestDistrict);

                ddlDestUpazila.SelectedIndex = 0;
                ddlDestUpazila.Enabled = false;
            }
        }

        protected void ddlDestDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlDestDistrict.SelectedIndex == 0)
            {
                ddlDestUpazila.SelectedIndex = 0;
                ddlDestUpazila.Enabled = false;
            }
            else
            {
                ddlDestUpazila.Enabled = true;
                SqlParameter parameter = new SqlParameter("@DestDistrictId", ddlDestDistrict.SelectedValue);
                DataSet ds = GetData("spGetDestUpazilaByDistrictId", parameter);

                ddlDestUpazila.DataSource = ds;
                ddlDestUpazila.DataBind();

                ListItem liDestUpazila = new ListItem("Select Upazila", "-1");
                ddlDestUpazila.Items.Insert(0, liDestUpazila);

            }
        }

        protected void ddlDestUpazila_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }

        //User Feedback Button
        protected void btnSend_Click(object sender, EventArgs e)
        {
            string CS = WebConfigurationManager.ConnectionStrings["TravelInformationBangladeshDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();

                //creating  SqlCommand  object
                SqlCommand cmd = new SqlCommand("spUserFeedback", con);

                //here we declaring command type as stored Procedure
                cmd.CommandType = CommandType.StoredProcedure;

                //Adding parameter to sqlcommand below
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@feedback", txtComment.Text);
                cmd.ExecuteNonQuery();

                lblStatus.Visible = true;
                lblStatus.Text = "Records are Submitted Successfully.";
            }
        }
    }
}