using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gametracker_phase31
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine(Page.Title + " loaded...");
            SetActivePage();
            if (!IsPostBack)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    publicPlaceHolder.Visible = false;
                    userPlaceHolder.Visible = true;
                }
                else
                {
                    publicPlaceHolder.Visible = true;
                    userPlaceHolder.Visible = false;
                }
            }
        }

        private void SetActivePage()
        {
            switch (Page.Title)
            {
                case "Home":
                    home1.Attributes.Add("class", "active");
                    home2.Attributes.Add("class", "active");
                    break;
                case "Signup":
                    signup.Attributes.Add("class", "active");
                    break;
                case "Signin":
                    signin.Attributes.Add("class", "active");
                    break;

            }
        }
        //    private void changeNavWord() {
        //        switch (Page.Title)
        //        {
        //            case "Home":

        //                break;


        //        }
    }
}