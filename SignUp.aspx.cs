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
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=O:\BCA Material\Semester IV\ASP.NET\Planet Pizza Project\App_Data\PlanetPizzaDatabase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            AlreadyExistsLabel.Visible = false;
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            string selectQuery = "SELECT * FROM Accounts WHERE email = '" + EmailTextBox.Text + "'";
            SqlCommand cmd1 = new SqlCommand(selectQuery, con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            if (reader.Read())
            {
                AlreadyExistsLabel.Visible = true;
                AlreadyExistsLabel.Text = "This email already exists. Please sign in instead.";
            }
            else
            {
                reader.Close();
                string insertQuery = "INSERT INTO Accounts VALUES('" + NameTextBox.Text + "','" + EmailTextBox.Text + "','" + PasswordTextBox.Text + "','" + MobileTextBox.Text + "','" + AddressTextBox.Text + "')";
                SqlCommand cmd2 = new SqlCommand(insertQuery, con);
                int i = Convert.ToInt32(cmd2.ExecuteNonQuery());
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
            con.Close();
        }

        protected void SignInButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }
}