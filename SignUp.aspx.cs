using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Planet_Pizza_Project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=O:\BCA Material\Semester IV\ASP.NET\Planet Pizza Project\App_Data\PlanetPizzaDatabase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            string query = "insert into Accounts values('" + NameTextBox.Text + "','" + EmailTextBox.Text + "','" + PasswordTextBox.Text + "','" + MobileTextBox.Text + "','" + AddressTextBox.Text + "')";

            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int i = Convert.ToInt32(cmd.ExecuteNonQuery());
            MultiView1.ActiveViewIndex = 1;
            if (i > 0)
            {
                Status.Text = "You have signed up successfully!";
            }
            else
            {
                Status.Text = "There was an error. Please try again.";
                SignInButton.Visible = false;
            }
        }

        protected void SignInButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }
}