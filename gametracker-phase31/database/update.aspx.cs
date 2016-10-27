using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using gametracker_phase31.Models;
namespace gametracker_phase31
{
    public partial class courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sportsCategory.Attributes.Add("class", "form-control");
            week.Attributes.Add("class", "form-control");
            if (!IsPostBack)
            {
                if (Request.QueryString.Count > 0)
                {
                    getPreviousPageInfo();
                    SelectingRelativeInfo();
                }
            }

        }
        protected void getPreviousPageInfo()
        {
            using (GameContext db = new GameContext())
            {
                int id = Convert.ToInt32(Request.QueryString["ID"]);
                var previouseObject = (from s in db.game_grades
                                       where s.Sports_ID == id
                                       select s).FirstOrDefault();
                sportsCategory.Value = previouseObject.Sports_category;
                week.Value = previouseObject.Week.ToString();

            }

        }
        protected void selectButton_Click(object sender, EventArgs e)
        {

            SelectingRelativeInfo();
        }
        protected void SelectingRelativeInfo()
        {

            try
            {
                detaildatafield.Style.Add("display", "block");
                string category = sportsCategory.Value;
                int weekNumber = Convert.ToInt32(week.Value);
                GameContext db = new GameContext();
                var gameInformation = (from s in db.game_grades
                                       where s.Sports_category == category && s.Week == weekNumber
                                       select s).ToList();
                updateGridView.DataSource = gameInformation;
                updateGridView.DataBind();
                errorLabel.Text = "";
            }
            catch (Exception exception)
            {
                errorLabel.Text = "Please try it later";
            }

        }
        protected void updateGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}