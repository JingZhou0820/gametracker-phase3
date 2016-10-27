using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using gametracker_phase31.Models;
using System.Web.ModelBinding;
namespace gametracker_phase31
{

    public partial class departments : System.Web.UI.Page
    {
        int weekNumber;
        string category;

        protected void Page_Load(object sender, EventArgs e)
        {
            sportsCategory.Attributes.Add("class", "form-control");
            week.Attributes.Add("class", "form-control");
        }

        protected void updateGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int selectedRow = e.RowIndex;
                int SportsID = Convert.ToInt32(deleteGridView.DataKeys[selectedRow].Values["Sports_ID"]);
                using (GameContext db = new GameContext())
                {
                    game_grades deleteRecord = (from s in db.game_grades
                                                where s.Sports_ID == SportsID
                                                select s).FirstOrDefault();
                    db.game_grades.Remove(deleteRecord);
                    db.SaveChanges();
                }
                showDataafterselecting();
            }
            catch (Exception exception)
            {

                errorLabel.Text = "Fail to delete";
            }

        }

        protected void selectButton_Click(object sender, EventArgs e)
        {
            errorLabel.Text = "";
            showDataafterselecting();
        }
        protected void showDataafterselecting()
        {
            try
            {
                detailInformation.Style.Add("display", "block");
                category = sportsCategory.Value;
                weekNumber = Convert.ToInt32(week.Value);
                GameContext db = new GameContext();
                var gameInformation = (from s in db.game_grades
                                       where s.Sports_category == category && s.Week == weekNumber
                                       select s).ToList();
                deleteGridView.DataSource = gameInformation;
                deleteGridView.DataBind();
                errorLabel.Text = "";
            }
            catch (Exception exception)
            {

                errorLabel.Text = "Please try it later";
            }

        }
    }
}