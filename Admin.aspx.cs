using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Planet_Pizza_Project
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=O:\BCA Material\Semester IV\ASP.NET\Planet Pizza Project\App_Data\PlanetPizzaDatabase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            StatusPizza.Visible = false;
            StatusSide.Visible = false;
            if (!IsPostBack)
            {
                string selectQuery = "SELECT * FROM Accounts";
                DataTable userTable = new DataTable();
                SqlCommand cmd = new SqlCommand(selectQuery, con);
                SqlDataAdapter userAdapter = new SqlDataAdapter(selectQuery, con);
                con.Open();
                userAdapter.Fill(userTable);
                con.Close();
                if (userTable.Rows.Count > 0)
                {
                    UserDetailsGridView.DataSource = userTable;
                    UserDetailsGridView.DataBind();
                }
            }
        }

        protected void AddPizzaButton_Click(object sender, EventArgs e)
        {
            if (PizzaPhotoUpload.HasFile)
            {
                string fileName = Path.GetFileName(PizzaPhotoUpload.FileName);
                string imagePath = "/images/pizzas/" + PizzaPhotoUpload.FileName;
                PizzaPhotoUpload.PostedFile.SaveAs(Server.MapPath("~/images/pizzas/") + fileName);
                string pizzaName = PizzaNameTextBox.Text;
                int pizzaPrice = Convert.ToInt32(PizzaPriceTextBox.Text);
                int isVeg;
                if (CheckVegRadioButtonList.SelectedValue == "True")
                {
                    isVeg = 1;
                }
                else
                {
                    isVeg = 0;
                }
                string insertQuery = "INSERT INTO Pizzas VALUES(@imagepath, @pizzaName, @pizzaPrice, @isVeg)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@imagepath", imagePath);
                cmd.Parameters.AddWithValue("@pizzaName", pizzaName);
                cmd.Parameters.AddWithValue("@pizzaPrice", pizzaPrice);
                cmd.Parameters.AddWithValue("@isVeg", isVeg);
                con.Open();
                int i = Convert.ToInt32(cmd.ExecuteNonQuery());
                StatusPizza.Visible = true;
                if (i > 0)
                {
                    StatusPizza.Text = "Pizza added successfully!";
                }
                else
                {
                    StatusPizza.Text = "There was an error.";
                }
                con.Close();
            }
            else
            {
                StatusPizza.Visible = true;
                StatusPizza.Text = "Please select a photo!";
            }
        }

        protected void AddSideButton_Click(object sender, EventArgs e)
        {
            if (SidePhotoUpload.HasFile)
            {
                string fileName = Path.GetFileName(SidePhotoUpload.FileName);
                string imagePath = "/images/sides/" + SidePhotoUpload.FileName;
                SidePhotoUpload.PostedFile.SaveAs(Server.MapPath("~/images/sides/") + fileName);
                string sideName = SideNameTextBox.Text;
                int sidePrice = Convert.ToInt32(SidePriceTextBox.Text);
                string insertQuery = "INSERT INTO Sides VALUES(@imagepath, @sideName, @sidePrice)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@imagepath", imagePath);
                cmd.Parameters.AddWithValue("@sideName", sideName);
                cmd.Parameters.AddWithValue("@sidePrice", sidePrice);
                con.Open();
                int i = Convert.ToInt32(cmd.ExecuteNonQuery());
                StatusSide.Visible = true;
                if (i > 0)
                {
                    StatusSide.Text = "Side added successfully!";
                }
                else
                {
                    StatusSide.Text = "There was an error.";
                }
                con.Close();
            }
            else
            {
                StatusSide.Visible = true;
                StatusSide.Text = "Please select a photo!";
            }
        }
    }
}