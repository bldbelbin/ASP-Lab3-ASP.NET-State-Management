using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingCart : System.Web.UI.Page
{
    Dictionary<string, int> shopCart = new Dictionary<string, int>();


    protected void Page_Load(object sender, EventArgs e)
    {
       if (Session["checkout"] != null)
        {
            shopCart = (Dictionary<string, int>)Session["checkout"];
          
        } 
       else
        {
            shopCart.Add("Apples", 0);
            shopCart.Add("Shreddies", 0);
            shopCart.Add("Bread", 0);
            shopCart.Add("Eggs", 0);
            shopCart.Add("Milk", 0);
            shopCart.Add("Butter", 0);
            shopCart.Add("Cake", 0);
            shopCart.Add("Tomatoes", 0);
        }

        if (!Page.IsPostBack)
        {
            CheckedList.DataTextField = "Key";
            CheckedList.DataSource = shopCart;
            CheckedList.DataBind();
        }

        Label1.Text = "There are " + shopCart.Sum(item => item.Value) + " items in your cart";

    }


    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < CheckedList.Items.Count; i++)
        {
            if (CheckedList.Items[i].Selected)
            {
                shopCart[CheckedList.Items[i].Text] ++;
            }
        }

        Session["checkout"] = shopCart;

        Response.Redirect("Display.aspx");
    }

    protected void BtnView_Click(object sender, EventArgs e)
    {
        if (Session["checkout"] != null)
        {
            Response.Redirect("Display.aspx");
        }
        else
        {
            Response.Redirect("ShoppingCart.aspx");
        }
    }
}