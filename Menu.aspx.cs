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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=O:\BCA Material\Semester IV\ASP.NET\Planet Pizza Project\App_Data\PlanetPizzaDatabase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string vegQuery = "SELECT * FROM Pizzas WHERE isVeg = 1";
                SqlDataAdapter vegAdapter = new SqlDataAdapter(vegQuery, con);
                DataTable vegTable = new DataTable();
                vegAdapter.Fill(vegTable);
                VegDataList.DataSource = vegTable;
                VegDataList.DataBind();

                string nonVegQuery = "SELECT * FROM Pizzas WHERE isVeg = 0";
                SqlDataAdapter nonVegAdapter = new SqlDataAdapter(nonVegQuery, con);
                DataTable nonVegTable = new DataTable();
                nonVegAdapter.Fill(nonVegTable);
                NonVegDataList.DataSource = nonVegTable;
                NonVegDataList.DataBind();

                string sidesQuery = "SELECT * FROM Sides";
                SqlDataAdapter sidesAdapter = new SqlDataAdapter(sidesQuery, con);
                DataTable sidesTable = new DataTable();
                sidesAdapter.Fill(sidesTable);
                SidesDataList.DataSource = sidesTable;
                SidesDataList.DataBind();
            }
        }

        protected void AddToCartPizzaButton_Click(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Button button = (Button)sender;
                string pizzaID = button.CommandArgument.ToString();
                Session["checkCart"] = 1;
                string query1 = "SELECT * FROM Pizzas WHERE ID = '" + pizzaID + "'";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                con.Open();
                SqlDataReader reader = cmd1.ExecuteReader();
                if (reader.Read())
                {
                    string pizzaImage = reader["imagepath"].ToString();
                    string pizzaName = reader["pizzaName"].ToString();
                    int pizzaPrice = Convert.ToInt32(reader["pizzaPrice"]);
                    reader.Close();
                    string query2 = "INSERT INTO Orders VALUES(@pizzaImage, @pizzaName, @pizzaPrice)";
                    SqlCommand cmd2 = new SqlCommand(query2, con);
                    cmd2.Parameters.AddWithValue("@pizzaImage", pizzaImage);
                    cmd2.Parameters.AddWithValue("@pizzaName", pizzaName);
                    cmd2.Parameters.AddWithValue("@pizzaPrice", pizzaPrice);
                    cmd2.ExecuteNonQuery();
                    Response.Redirect("Cart.aspx");
                }
                con.Close();
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        protected void AddToCartSideButton_Click(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Button button = (Button)sender;
                string sideID = button.CommandArgument.ToString();
                Session["checkCart"] = 1;
                string query1 = "SELECT * FROM Sides WHERE ID = '" + sideID + "'";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                con.Open();
                SqlDataReader reader = cmd1.ExecuteReader();
                if (reader.Read())
                {
                    string sideImage = reader["imagepath"].ToString();
                    string sideName = reader["sideName"].ToString();
                    int sidePrice = Convert.ToInt32(reader["sidePrice"]);
                    reader.Close();
                    string query2 = "INSERT INTO Orders VALUES(@sideImage, @sideName, @sidePrice)";
                    SqlCommand cmd2 = new SqlCommand(query2, con);
                    cmd2.Parameters.AddWithValue("@sideImage", sideImage);
                    cmd2.Parameters.AddWithValue("@sideName", sideName);
                    cmd2.Parameters.AddWithValue("@sidePrice", sidePrice);
                    cmd2.ExecuteNonQuery();
                    Response.Redirect("Cart.aspx");
                }
                con.Close();
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
        }
    }
}