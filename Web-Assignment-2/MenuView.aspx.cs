using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;

namespace Web_Assignment_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

          

        }

        protected void RepeaterFoodList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

           
              

        }
        protected void Selected(object sender, EventArgs e)
        {
            //Reference the Repeater Item using Button.
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            //Reference the Label and TextBox.

            int foodID = (item.ItemIndex + 1);
            Session["food"] = foodID;
            Response.Redirect("~/ItemView.aspx");
            
        }

        

    }
}