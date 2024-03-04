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
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=O:\BCA Material\Semester IV\ASP.NET\Planet Pizza Project\App_Data\PlanetPizzaDatabase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> itemNamesList = (List<string>)Session["itemNames"];
            string itemNamesString = string.Join("<br />", itemNamesList);
            OrderDetailsLabel.Text = itemNamesString;
            TotalAmountLabel.Text = Session["amount"].ToString();
            DetailsName.Text = "Name: " + Session["name"].ToString();
            DetailsEmail.Text = "Email: " + Session["email"].ToString();
            DetailsMobile.Text = "Mobile No: " + Session["mobile"].ToString();
            DetailsAddress.Text = "Address: " + Session["address"].ToString();
        }

        protected void GoHomeButton_Click(object sender, EventArgs e)
        {
            string query = "DELETE FROM Orders";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Session["checkCart"] = 0;
            Response.Redirect("~/Home.aspx");
        }
    }
}