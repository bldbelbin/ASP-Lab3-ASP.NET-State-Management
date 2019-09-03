using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Display : System.Web.UI.Page
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
            Response.Redirect("ShoppingCart.aspx");
        }

        if (!Page.IsPostBack)
        {
           CheckOut.DataSource = shopCart;
           CheckOut.DataBind();
        }

        Label1.Text = "There are " + shopCart.Sum(item => item.Value) + " items in your cart";

    }

    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShoppingCart.aspx");
    }


    protected void Clear_Click(object sender, EventArgs e)
    {
        foreach (var key in shopCart.Keys.ToList())
        {
            shopCart[key] = 0;
        }

        Session["checkout"] = shopCart;

        Response.Redirect("Display.aspx");
    }

}