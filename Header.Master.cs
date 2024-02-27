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
            if (Session["name"] != null)
            {
                Button1.Visible = false;
                Button2.Visible = false;
                Label1.Text = "Welcome " + Session["name"];
            }
            else
            {
                Label1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignUp.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");
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
            Response.Redirect("~/Contact.aspx");
        }
    }
}