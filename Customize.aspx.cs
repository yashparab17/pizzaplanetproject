using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Planet_Pizza_Project
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TypeList.SelectedValue = "1";
                TypeCB.Visible = false;
                TypeBR.Visible = false;
                SizeList.SelectedValue = "M";
                CrustList.SelectedValue = "HT";
                CrustTC.Visible = false;
                CrustCC.Visible = false;
                ToppingA.Visible = false;
                ToppingC.Visible = false;
                ToppingJ.Visible = false;
                ToppingM.Visible = false;
                ToppingP.Visible = false;
                ToppingV.Visible = false;
                UpdatePrice();
            }
        }

        protected void UpdatePrice()
        {
            int totalPrice = 100;

            if (TypeList.SelectedValue == "2")
            {
                totalPrice += 15;
            }
            else if (TypeList.SelectedValue == "3")
            {
                totalPrice += 30;
            }

            if (SizeList.SelectedValue == "S")
            {
                totalPrice -= 50;
            }
            else if (SizeList.SelectedValue == "L")
            {
                totalPrice += 75;
            }

            if (CrustList.SelectedValue == "TC")
            {
                totalPrice -= 15;
            }
            else if (CrustList.SelectedValue == "CC")
            {
                totalPrice += 20;
            }

            if (ToppingsList.SelectedValue == "A")
            {
                totalPrice += 40;
            }
            if (ToppingsList.SelectedValue == "C")
            {
                totalPrice += 50;
            }
            if (ToppingsList.SelectedValue == "J")
            {
                totalPrice += 25;
            }
            if (ToppingsList.SelectedValue == "M")
            {
                totalPrice += 45;
            }
            if (ToppingsList.SelectedValue == "P")
            {
                totalPrice += 30;
            }
            if (ToppingsList.SelectedValue == "V")
            {
                totalPrice += 45;
            }

            PriceLabel.Text = "Total Price = " + totalPrice;
        }

        protected void TypeList_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch(TypeList.SelectedValue)
            {
                case "1":
                    TypeNY.Visible = true;
                    TypeCB.Visible = false;
                    TypeBR.Visible = false;
                    break;
                case "2":
                    TypeNY.Visible = false;
                    TypeCB.Visible = true;
                    TypeBR.Visible = false;
                    break;
                case "3":
                    TypeNY.Visible = false;
                    TypeCB.Visible = false;
                    TypeBR.Visible = true;
                    break;
                default:
                    break;
            }
            UpdatePrice();
        }

        protected void SizeList_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (SizeList.SelectedValue)
            {
                case "S":
                    ImageDiv.Style["width"] = "150px";
                    ImageDiv.Style["height"] = "150px";
                    break;
                case "M":
                    ImageDiv.Style["width"] = "200px";
                    ImageDiv.Style["height"] = "200px";
                    break;
                case "L":
                    ImageDiv.Style["width"] = "300px";
                    ImageDiv.Style["height"] = "300px";
                    break;
                default:
                    ImageDiv.Style["width"] = "auto";
                    ImageDiv.Style["height"] = "auto";
                    break;
            }
            UpdatePrice();
        }

        protected void CrustList_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (CrustList.SelectedValue)
            {
                case "HT":
                    CrustHT.Visible = true;
                    CrustTC.Visible = false;
                    CrustCC.Visible = false;
                    break;
                case "TC":
                    CrustHT.Visible = false;
                    CrustTC.Visible = true;
                    CrustCC.Visible = false;
                    break;
                case "CC":
                    CrustHT.Visible = false;
                    CrustTC.Visible = false;
                    CrustCC.Visible = true;
                    break;
                default:
                    break;
            }
            UpdatePrice();
        }

        protected void ToppingsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            ToppingA.Visible = false;
            ToppingC.Visible = false;
            ToppingJ.Visible = false;
            ToppingM.Visible = false;
            ToppingP.Visible = false;
            ToppingV.Visible = false;
            foreach(ListItem item in ToppingsList.Items)
            {
                if (item.Selected)
                {
                    switch (item.Value)
                    {
                        case "A":
                            ToppingA.Visible = true;
                            break;
                        case "C":
                            ToppingC.Visible = true;
                            break;
                        case "J":
                            ToppingJ.Visible = true;
                            break;
                        case "M":
                            ToppingM.Visible = true;
                            break;
                        case "P":
                            ToppingP.Visible = true;
                            break;
                        case "V":
                            ToppingV.Visible = true;
                            break;
                        default:
                            break;
                    }
                }
            }
            UpdatePrice();
        }
    }
}