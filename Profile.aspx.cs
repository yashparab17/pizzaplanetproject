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
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=O:\BCA Material\Semester IV\ASP.NET\Planet Pizza Project\App_Data\PlanetPizzaDatabase.mdf;Integrated Security=True");
        string savedEmail = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateDetailsDiv.Visible = false;
            if (Session["email"] != null)
            {
                DetailsName.Text = "Name: " + Session["name"].ToString();
                DetailsEmail.Text = "Email: " + Session["email"].ToString();
                savedEmail = Session["email"].ToString();
                DetailsMobile.Text = "Mobile No: " + Session["mobile"].ToString();
                DetailsAddress.Text = "Address: " + Session["address"].ToString();
            }
            else
            {
                Response.Redirect("~/Home.aspx");
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            UpdateDetailsDiv.Visible = true;
        }

        protected void SaveUpdateDetails_Click(object sender, EventArgs e)
        {
            int id = 0;
            string selectQuery = "select id from Accounts where email = '" + savedEmail + "'";
            SqlCommand cmd1 = new SqlCommand(selectQuery, con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            if (reader.Read())
            {
                id = Convert.ToInt32(reader["id"]);
            }
            reader.Close();
            if (id != 0)
            {
                string updateQuery = "update Accounts set name = '" + UpdateNameTextBox.Text + "', email = '" + UpdateEmailTextBox.Text + "', password = '" + UpdatePasswordTextBox.Text + "', mobile = '" +  UpdateMobileTextBox.Text + "', address = '" + UpdateAddressTextBox.Text + "'";
                SqlCommand cmd2 = new SqlCommand(updateQuery, con);
                int i = cmd2.ExecuteNonQuery();
                if (i != 0)
                {
                    Session.Clear();
                    Response.Redirect("~/Status.aspx");
                }
                else
                {
                    Session.Clear();
                }
            }
            con.Close();
        }
    }
}