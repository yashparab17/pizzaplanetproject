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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "insert into Accounts values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int i = Convert.ToInt32(cmd.ExecuteNonQuery());
            MultiView1.ActiveViewIndex = 1;
            if (i > 0)
            {
                Label7.Text = "You have signed up successfully!";
            }
            else
            {
                Label7.Text = "There was an error. Please try again.";
                Button2.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }
}