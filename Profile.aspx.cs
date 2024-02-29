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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                string strname = Session["name"].ToString();
                string query = "select * from Accounts where name = '" + strname + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Label1.Text = reader["name"].ToString();
                    Label2.Text = reader["email"].ToString();
                    Label3.Text = reader["password"].ToString();
                    Label4.Text = reader["mobile"].ToString();
                    Label5.Text = reader["address"].ToString();
                }
                con.Close();
            }
            else
            {
                Response.Redirect("~/Home.aspx");
            }
        }
    }
}