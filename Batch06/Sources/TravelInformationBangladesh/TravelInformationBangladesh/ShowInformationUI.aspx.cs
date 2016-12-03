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
    public partial class ShowInformationUI : System.Web.UI.Page
    {
        DivisionManager divisionManager = new DivisionManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShowDivision_Click(object sender, EventArgs e)
        {
            gVShowDivision.DataSource = divisionManager.GetAllDivisions();
            gVShowDivision.DataBind();
        }
    }
}