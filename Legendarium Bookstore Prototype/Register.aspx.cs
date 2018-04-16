using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace Legendarium_Bookstore_Prototype
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole adminRole = new IdentityRole("Member");
            roleManager.Create(adminRole);
            var user = new IdentityUser()
            {
                UserName = RegEmail.Text,
                Email = RegEmail.Text
            };

            IdentityResult result = manager.Create(user, RegPassword.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "Member");
                manager.Update(user);
                LitRegisterError.Text = "Registration succesfully"; //todo: Log in Then
            }
            else
            {
                LitRegisterError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }

    }
}