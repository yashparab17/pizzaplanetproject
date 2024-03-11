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
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=O:\BCA Material\Semester IV\ASP.NET\Planet Pizza Project\App_Data\PlanetPizzaDatabase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string reviewQuery = "SELECT * FROM Reviews ORDER BY id DESC";
                SqlDataAdapter reviewAdapter = new SqlDataAdapter(reviewQuery, con);
                DataTable reviewsTable = new DataTable();
                reviewAdapter.Fill(reviewsTable);
                ReviewsDataList.DataSource = reviewsTable;
                ReviewsDataList.DataBind();
            }
        }
    }
}