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
    public partial class updateDetail : System.Web.UI.Page
    {
        int gameID;
        game_grades updatingObject;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getPreviousPageData();
            }

        }
        protected void getPreviousPageData()
        {
            try
            {
                using (GameContext db = new GameContext())
                {
                    if (Request.QueryString.Count > 0)
                    {
                        gameID = Convert.ToInt32(Request.QueryString["Sports_ID"]);
                        updatingObject = (from s in db.game_grades
                                          where s.Sports_ID == gameID
                                          select s).FirstOrDefault();
                        TeamNameTextBox.Text = updatingObject.Team_Name;
                        WeekTextBox.Text = updatingObject.Week.ToString();
                        CategoryTextBox.Text = updatingObject.Sports_category;
                        PointTextBox.Text = updatingObject.Point.ToString();
                    }
                }
                errorLabel.Text = "";
            }
            catch (Exception)
            {

                errorLabel.Text = "Fail to update";
            }



        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            try
            {
                using (GameContext db = new GameContext())
                {
                    if (Request.QueryString.Count > 0)
                    {
                        gameID = Convert.ToInt32(Request.QueryString["Sports_ID"]);
                        updatingObject = (from s in db.game_grades
                                          where s.Sports_ID == gameID
                                          select s).FirstOrDefault();
                        String url_1 = "update.aspx?ID=" + updatingObject.Sports_ID;
                        Response.Redirect(url_1);
                    }
                }
                errorLabel.Text = "";
            }
            catch (Exception)
            {

                errorLabel.Text = "Fail to update";
            }

        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            try
            {
                using (GameContext db = new GameContext())

                {
                    gameID = Convert.ToInt32(Request.QueryString["Sports_ID"]);
                    var updatingObject = (from s in db.game_grades
                                          where s.Sports_ID == gameID
                                          select s).FirstOrDefault();
                    updatingObject.Point = Convert.ToInt32(PointTextBox.Text);
                    db.SaveChanges();
                    String url_1 = "update.aspx?ID=" + updatingObject.Sports_ID;
                    Response.Redirect(url_1);
                }

                errorLabel.Text = "";
            }
            catch (Exception exception)
            {

                errorLabel.Text = "Fail to update";
            }

        }
    }
}