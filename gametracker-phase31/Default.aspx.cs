using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using statement require to connect enity framwork database
using gametracker_phase31.Models;
using System.Web.ModelBinding;
using System.Diagnostics;

namespace gametracker_phase31
{
    public partial class students : System.Web.UI.Page
    {
        public static int week = 40;
        public String weekStr = week.ToString();
        int scoreOfBharat;
        int scoreOfFalcon;
        int scoreOfGeorgia;
        int scoreOfKennesaw;
        int scoreOfCavalier;
        int scoreOfKnicks;
        int scoreOfToronto;
        int scoreOfMontreal;
        protected void Page_Load(object sender, EventArgs e)
        {
            weekNumber.Text = week.ToString();
            getScoreCricket();
            getScoreBaseBall();
            getScoreBasketball();
            getScoreSoccer();
        }
        private void getScoreCricket()
        {
            GameContext db = new GameContext();

            try
            {
                scoreOfBharat = (from s in db.game_grades
                                 where s.Week == week && s.Team_Name == "Bharat Cricket"
                                 select s.Point).Sum();
                bharatScore.Text = scoreOfBharat.ToString();
            }
            catch (Exception exception)
            {

                bharatScore.Text = "0";
            }


            try
            {
                scoreOfFalcon = (from s in db.game_grades
                                 where s.Week == week && s.Team_Name == "Falcon-A"
                                 select s.Point).Sum();
                falconScore.Text = scoreOfFalcon.ToString();
            }
            catch (Exception exception)
            {

                falconScore.Text = scoreOfFalcon.ToString();
            }

        }
        private void getScoreBaseBall()
        {
            GameContext db = new GameContext();

            try
            {
                scoreOfGeorgia = (from s in db.game_grades
                                  where s.Week == week && s.Team_Name == "Georgia State"
                                  select s.Point).Sum();
                GeorgiaScore.Text = scoreOfGeorgia.ToString();
            }
            catch (Exception exception)
            {

                GeorgiaScore.Text = "0";
            }


            try
            {
                scoreOfKennesaw = (from s in db.game_grades
                                   where s.Week == week && s.Team_Name == "Kennesaw"
                                   select s.Point).Sum();
                KennesawScore.Text = scoreOfKennesaw.ToString();
            }
            catch (Exception exception)
            {

                KennesawScore.Text = scoreOfKennesaw.ToString();
            }

        }

        private void getScoreBasketball()
        {
            GameContext db = new GameContext();

            try
            {
                scoreOfCavalier = (from s in db.game_grades
                                   where s.Week == week && s.Team_Name == "Cavalier"
                                   select s.Point).Sum();
                CavakierScore.Text = scoreOfCavalier.ToString();
            }
            catch (Exception exception)
            {

                CavakierScore.Text = "0";
            }


            try
            {
                scoreOfKnicks = (from s in db.game_grades
                                 where s.Week == week && s.Team_Name == "Knicks"
                                 select s.Point).Sum();
                KnicksScore.Text = scoreOfKnicks.ToString();
            }
            catch (Exception exception)
            {

                KnicksScore.Text = scoreOfKnicks.ToString();
            }

        }
        private void getScoreSoccer()
        {
            GameContext db = new GameContext();

            try
            {
                scoreOfMontreal = (from s in db.game_grades
                                   where s.Week == week && s.Team_Name == "Montreal Impact"
                                   select s.Point).Sum();
                MontrealScore.Text = scoreOfMontreal.ToString();
            }
            catch (Exception exception)
            {

                MontrealScore.Text = "0";
            }


            try
            {
                scoreOfToronto = (from s in db.game_grades
                                  where s.Week == week && s.Team_Name == "Toronto FC"
                                  select s.Point).Sum();
                TorontoScore.Text = scoreOfToronto.ToString();
            }
            catch (Exception exception)
            {

                TorontoScore.Text = scoreOfToronto.ToString();
            }

        }

        protected void rightArrow_Click(object sender, ImageClickEventArgs e)
        {
            week = week + 1;
            if (week == 44)
            {
                week = 43;
            }

            weekNumber.Text = week.ToString();
            getScoreCricket();
            cricketdatasourceCommandChange();
            getScoreBaseBall();
            baseballdatasourceCommandChange();
            getScoreBasketball();
            basketballdatasourceCommandChange();
            getScoreSoccer();
            soccerdatasourceCommandChange();
        }

        protected void leftArrow_Click(object sender, ImageClickEventArgs e)
        {
            week = week - 1;
            if (week == 39)
            {
                week = 40;
            }

            weekNumber.Text = week.ToString();
            getScoreCricket();
            cricketdatasourceCommandChange();
            getScoreBaseBall();
            baseballdatasourceCommandChange();
            getScoreBasketball();
            basketballdatasourceCommandChange();
            getScoreSoccer();
            soccerdatasourceCommandChange();
        }

        protected void cricketdatasourceCommandChange()
        {
            switch (week)
            {
                case 40:
                    SqlDataSource1.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=40 and Sports_category='cricket' GROUP BY Team_Name";
                    break;
                case 41:
                    SqlDataSource1.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=41 and Sports_category='cricket' GROUP BY Team_Name";
                    break;
                case 42:
                    SqlDataSource1.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=42 and Sports_category='cricket' GROUP BY Team_Name";
                    break;
                case 43:
                    SqlDataSource1.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=43 and Sports_category='cricket' GROUP BY Team_Name";
                    break;
                default:
                    break;
            }

        }
        protected void baseballdatasourceCommandChange()
        {
            switch (week)
            {
                case 40:
                    SqlDataSource2.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=40 and Sports_category='baseball' GROUP BY Team_Name";
                    break;
                case 41:
                    SqlDataSource2.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=41 and Sports_category='baseball' GROUP BY Team_Name";
                    break;
                case 42:
                    SqlDataSource2.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=42 and Sports_category='baseball' GROUP BY Team_Name";
                    break;
                case 43:
                    SqlDataSource2.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=43 and Sports_category='baseball' GROUP BY Team_Name";
                    break;
                default:
                    break;
            }
        }
        protected void basketballdatasourceCommandChange()
        {
            switch (week)
            {
                case 40:
                    SqlDataSource3.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=40 and Sports_category='basketball' GROUP BY Team_Name";
                    break;
                case 41:
                    SqlDataSource3.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=41 and Sports_category='basketball' GROUP BY Team_Name";
                    break;
                case 42:
                    SqlDataSource3.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=42 and Sports_category='basketball' GROUP BY Team_Name";
                    break;
                case 43:
                    SqlDataSource3.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=43 and Sports_category='basketball' GROUP BY Team_Name";
                    break;
                default:
                    break;
            }

        }
        protected void soccerdatasourceCommandChange()
        {
            switch (week)
            {
                case 40:
                    SqlDataSource4.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=40 and Sports_category='soccer' GROUP BY Team_Name";
                    break;
                case 41:
                    SqlDataSource4.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=41 and Sports_category='soccer' GROUP BY Team_Name";
                    break;
                case 42:
                    SqlDataSource4.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=42 and Sports_category='soccer' GROUP BY Team_Name";
                    break;
                case 43:
                    SqlDataSource4.SelectCommand = "SELECT Team_Name, SUM(Point) AS [Accumulated Score] FROM game_grades WHERE week <=43 and Sports_category='soccer' GROUP BY Team_Name";
                    break;
                default:
                    break;
            }

        }
    }
}