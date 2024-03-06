using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Planet_Pizza_Project
{
    public partial class Header : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                SignUpButton.Visible = false;
                SignInButton.Visible = false;
                Label1.Visible = true;
                Label1.Text = "Welcome " + Session["name"];
                if (Session["email"].ToString() == "admin@gmail.com")
                {
                    SignOutButton.Visible = true;
                    UserProfileButton.Visible = false;
                    ViewCartButton.Visible = false;
                    NavButton1.Visible = false;
                    NavButton2.Visible = false;
                    NavButton3.Visible = false;
                    NavButton4.Visible = true;
                    NavButton5.Visible = true;
                }
                else
                {
                    UserProfileButton.Visible = true;
                    ViewCartButton.Visible = true;
                    NavButton1.Visible = true;
                    NavButton2.Visible = true;
                    NavButton3.Visible = true;
                    NavButton4.Visible = false;
                    NavButton5.Visible = false;
                }
            }
            else
            {
                Label1.Visible = false;
                SignOutButton.Visible = false;
                UserProfileButton.Visible = false;
                ViewCartButton.Visible = false;
                NavButton1.Visible = true;
                NavButton2.Visible = false;
                NavButton3.Visible = true;
                NavButton4.Visible = false;
                NavButton5.Visible = false;
            }
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignUp.aspx");
        }

        protected void SignInButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");
        }

        protected void SignOutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            SignUpButton.Visible = true;
            SignInButton.Visible = true;
            Label1.Visible = false;
            SignOutButton.Visible = false;
            UserProfileButton.Visible = false;
            ViewCartButton.Visible = false;
            NavButton2.Visible = false;
            NavButton4.Visible = false;
            NavButton5.Visible = false;
            Response.Redirect("~/Home.aspx");
        }

        protected void UserProfileButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Profile.aspx");
        }

        protected void ViewCartButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Cart.aspx");
        }

        protected void NavButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }
        protected void NavButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Customize.aspx");
        }
        protected void NavButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/About.aspx");
        }

        protected void NavButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reviews.aspx");
        }

        protected void NavButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin.aspx");
        }
    }
}