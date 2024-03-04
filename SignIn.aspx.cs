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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=O:\BCA Material\Semester IV\ASP.NET\Planet Pizza Project\App_Data\PlanetPizzaDatabase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Status.Visible = false;
        }

        protected void SignIn_Click(object sender, EventArgs e)
        {
            string query = "select * from Accounts where email = '" + EmailTextBox.Text + "' and password = '" + PasswordTextBox.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                string name = reader["name"].ToString();
                string email = reader["email"].ToString();
                string password = reader["password"].ToString();
                string mobile = reader["mobile"].ToString();
                string address = reader["address"].ToString();
                Session["name"] = name;
                Session["email"] = email;
                Session["password"] = password;
                Session["mobile"] = mobile;
                Session["address"] = address;
                reader.Close();
                con.Close();
                Response.Redirect("Home.aspx");
            }
            else
            {
                Status.Visible = true;
                Status.Text = "Invalid details! Please re-enter your details.";
            }
        }
    }
}