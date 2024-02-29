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
    }
}