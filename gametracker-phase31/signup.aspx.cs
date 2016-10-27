using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace gametracker_phase31
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void registorButton_Click(object sender, EventArgs e)
        {
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = new IdentityUser()
            {
                UserName = userNameTextBox.Text,
                PhoneNumber = phoneTextBox.Text,
                Email = emailTextBox.Text,
            };
            IdentityResult result = userManager.Create(user, PasswordTextBox.Text);
            if (result.Succeeded)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
                Response.Redirect("Default.aspx");
            }
            else
            {
                statusLabel.Visible = true;
                statusLabel.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}