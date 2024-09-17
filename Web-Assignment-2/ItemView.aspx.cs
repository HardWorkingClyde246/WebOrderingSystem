using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Web_Assignment_2
{
    public partial class Catalogue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //display Selected Food Details
            {
                SqlConnection con;
                string constr = ConfigurationManager.ConnectionStrings["ConnectionStringA"].ConnectionString;
                con = new SqlConnection(constr);
                con.Open();

                 int itemID = (int)Session["item"];
                int catID = (int)Session["category"];
                // int foodID = 1;
                string strGetItemName = "Select itemLabel From MenuItem Where itemID =" + itemID + " AND categoryID =" + catID;
                SqlCommand cmdRtr;
                cmdRtr = new SqlCommand(strGetItemName, con);
                string itemName = cmdRtr.ExecuteScalar().ToString();
                lblFoodName.Text = itemName;

                string strGetFoodDesc = "Select itemDescription From MenuItem Where itemID =" + itemID + " AND categoryID =" + catID;

                cmdRtr = new SqlCommand(strGetFoodDesc, con);
                string itemDesc = cmdRtr.ExecuteScalar().ToString();
                lblFoodDesc.Text = itemDesc;

                string strGetFoodPrice = "Select price From MenuItem Where itemID =" + itemID + " AND categoryID =" + catID;

                cmdRtr = new SqlCommand(strGetFoodPrice, con);
                string foodPrice = cmdRtr.ExecuteScalar().ToString();
                lblFoodPrice.Text = foodPrice;




                con.Close();

            }

        }

        protected void Button1_Click(object sender, EventArgs e) //add selected food to cart
        {
            SqlConnection con;
            string constr = ConfigurationManager.ConnectionStrings["ConnectionStringA"].ConnectionString;
            con = new SqlConnection(constr);
            con.Open();




           
            // int orderID = 1; //testing stub

            int orderID;
            
                SqlCommand cmdRtr4;
                string strGetLastOrderID = "SELECT TOP 1 orderID\r\nFROM Orders\r\nORDER BY orderID DESC;";
                cmdRtr4 = new SqlCommand(strGetLastOrderID, con);
                orderID = Int32.Parse(cmdRtr4.ExecuteScalar().ToString());
            
            if (orderID == 0) { orderID = 1; }
            else { orderID++; }

            int itemID = (int)Session["item"];
            int catID = (int)Session["category"];
            //int foodID = 1;// testing stub
            string strGetFoodName = "Select itemLabel From MenuItem Where itemID =" + itemID + " AND categoryID =" + catID;
            SqlCommand cmdRtr1;
            cmdRtr1 = new SqlCommand(strGetFoodName, con);
            string foodName = cmdRtr1.ExecuteScalar().ToString();

            SqlCommand cmdRtr2;
            string strGetFoodDesc = "Select itemDescription From MenuItem Where itemID =" + itemID + " AND categoryID =" + catID;

            cmdRtr2 = new SqlCommand(strGetFoodDesc, con);
            string foodDesc = cmdRtr2.ExecuteScalar().ToString();


            string strGetFoodPrice = "Select Price From MenuItem Where itemID =" + itemID + " AND categoryID =" + catID;
            SqlCommand cmdRtr3;
            cmdRtr3 = new SqlCommand(strGetFoodPrice, con);
            string foodPrice = cmdRtr3.ExecuteScalar().ToString();

            int quantity = Int32.Parse(ddlQuantity.SelectedValue.ToString());
            int customerID = 1; // testing stub

            float discount = 0;



            SqlCommand cmdInsrt1; //insert into order table
            string strInsrt = "Insert into Orders values (" + orderID + " ," + customerID + ", " + discount + " ,NULL )";

            cmdInsrt1 = new SqlCommand(strInsrt, con);

            cmdInsrt1.ExecuteNonQuery();


            SqlCommand cmdInsrt2; //insert into orderdetails table
            string strInsrt2 = "Insert into OrderDetails values (" + orderID + "," + itemID + "," + quantity + ", "+ catID + ")";

            cmdInsrt2 = new SqlCommand(strInsrt2, con);

            cmdInsrt2.ExecuteNonQuery();


            con.Close();
        }
    }
}