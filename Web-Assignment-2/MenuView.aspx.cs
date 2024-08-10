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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RepeaterFoodList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
           

            SqlConnection con;
            string constr = ConfigurationManager.ConnectionStrings["ConnectionStringA"].ConnectionString;
            con = new SqlConnection(constr);
            con.Open();

            
           

            //string strGetGSales = "SELECT SUM(Sales) AS TotalSales\r\nFROM (\r\n    SELECT Products.ProductName, Products.UnitPrice , [Order Details].Quantity AS Quantity, [Order Details].Discount AS Discount, ((Products.UnitPrice * Quantity) - (Products.UnitPrice * Discount)) AS Sales\r\n    FROM                                  Orders INNER JOIN\r\n                                      [Order Details] ON Orders.OrderID = [Order Details].OrderID INNER JOIN\r\n                                      Employees ON Orders.EmployeeID = Employees.EmployeeID INNER JOIN\r\n                                      Products ON [Order Details].ProductID = Products.ProductID\r\n    WHERE                             Orders.EmployeeID = " + empID + " AND YEAR(Orders.OrderDate) = " + year + "\r\n) AS SalesTable;";
            //SqlCommand cmd;
            //cmd = new SqlCommand(strGetGSales, con);
            //string strGSales = cmd.ExecuteScalar().ToString();


            con.Close();
        }
        protected void Selected(object sender, EventArgs e)
        {
            //Reference the Repeater Item using Button.
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            //Reference the Label and TextBox.

            int foodID = (item.ItemIndex + 1);
            Session["food"] = foodID;
         
            
        }
    }
}