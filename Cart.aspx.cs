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
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=O:\BCA Material\Semester IV\ASP.NET\Planet Pizza Project\App_Data\PlanetPizzaDatabase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string checkQuery = "SELECT COUNT(*) FROM TempOrders";
                SqlCommand cmd1 = new SqlCommand(checkQuery, con);
                con.Open();
                int rowCount = Convert.ToInt32(cmd1.ExecuteScalar());
                if (rowCount > 0)
                {
                    NoItemsLabel.Visible = false;
                    GoBackButton.Visible = false;
                    string orderQuery = "SELECT * FROM TempOrders";
                    SqlDataAdapter orderAdapter = new SqlDataAdapter(orderQuery, con);
                    DataTable orderTable = new DataTable();
                    orderAdapter.Fill(orderTable);
                    CartDataList.DataSource = orderTable;
                    CartDataList.DataBind();
                    string sumQuery = "SELECT SUM(itemPrice) FROM TempOrders";
                    SqlCommand cmd2 = new SqlCommand(sumQuery, con);
                    int totalAmount = Convert.ToInt32(cmd2.ExecuteScalar());
                    TotalAmountLabel.Text = "Total Amount Payable: Rs. " + totalAmount;
                }
                else
                {
                    NoItemsLabel.Visible = true;
                    CartDiv.Visible = false;
                    AmountDiv.Visible = false;
                    ButtonsDiv.Visible = false;
                }
                con.Close();
            }
        }

        protected void GoBackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

        protected void ContinueButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }

        protected void PaymentButton_Click(object sender, EventArgs e)
        {
            Session["amount"] = TotalAmountLabel.Text;
            List<string> itemNamesList = new List<string>();
            foreach (DataListItem item in CartDataList.Items)
            {
                Label itemNameLabel = (Label)item.FindControl("ItemName");
                string itemName = itemNameLabel.Text;
                itemNamesList.Add(itemName);
            }
            Session["itemNames"] = itemNamesList;
            Response.Redirect("~/Payment.aspx");
        }

        protected void DeleteItem_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string orderID = button.CommandArgument.ToString();
            string deleteQuery = "DELETE FROM TempOrders WHERE id = '" + orderID + "'";
            SqlCommand cmd = new SqlCommand(deleteQuery, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Cart.aspx");
        }
    }
}