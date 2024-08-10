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

                int foodID = (int)Session["food"];
                string strGetFoodName = "Select FoodLabel From Food Where FoodID =" + foodID;
                SqlCommand cmdRtr;
                cmdRtr = new SqlCommand(strGetFoodName, con);
                string foodName = cmdRtr.ExecuteScalar().ToString();
                lblFoodName.Text = foodName;

                string strGetFoodDesc = "Select FoodDescription From Food Where FoodID =" + foodID;
                
                cmdRtr = new SqlCommand(strGetFoodDesc, con);
                string foodDesc = cmdRtr.ExecuteScalar().ToString();
                lblFoodDesc.Text = foodDesc;

                string strGetFoodPrice = "Select Price From Food Where FoodID =" + foodID;

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




            int orderID = (int)Session["ssOrderID"];

            float tprice = 0; //totalprice

            int foodID = (int)Session["food"];
            string strGetFoodName = "Select FoodLabel From Food Where FoodID =" + foodID;
            SqlCommand cmdRtr1;
            cmdRtr1 = new SqlCommand(strGetFoodName, con);
            string foodName = cmdRtr1.ExecuteScalar().ToString();

            SqlCommand cmdRtr2;
            string strGetFoodDesc = "Select FoodDescription From Food Where FoodID =" + foodID;

            cmdRtr2 = new SqlCommand(strGetFoodDesc, con);
            string foodDesc = cmdRtr2.ExecuteScalar().ToString();
            

            string strGetFoodPrice = "Select Price From Food Where FoodID =" + foodID;
            SqlCommand cmdRtr3;
            cmdRtr3 = new SqlCommand(strGetFoodPrice, con);
            string foodPrice = cmdRtr3.ExecuteScalar().ToString();
            
            int quantity =Int32.Parse(ddlQuantity.SelectedValue.ToString());
            int customerID = 1;
             
            float discount = 0;

          

            SqlCommand cmdInsrt1; //insert into order table
            string strInsrt = "Insert into Orders values (" +orderID + " ,"+ customerID +", " +discount +")";

            cmdInsrt1 = new SqlCommand(strInsrt, con);

            cmdInsrt1.ExecuteNonQuery();


            SqlCommand cmdInsrt2; //insert into orderdetails table
            string strInsrt2 = "Insert into OrderDetails values (" +orderID +","+foodID+","+quantity+")";

            cmdInsrt2 = new SqlCommand(strInsrt2, con);

            cmdInsrt2.ExecuteNonQuery();


            con.Close();
        }
    }
}