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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con;
                string constr = ConfigurationManager.ConnectionStrings["ConnectionStringA"].ConnectionString;
                con = new SqlConnection(constr);
                con.Open();

                int orderID;
                {
                    SqlCommand cmdRtr4;
                    string strGetLastOrderID = "SELECT TOP 1 OrderID\r\nFROM Orders\r\nORDER BY OrderID DESC;";
                    cmdRtr4 = new SqlCommand(strGetLastOrderID, con);
                    orderID = Int32.Parse(cmdRtr4.ExecuteScalar().ToString());
                }
                if (orderID == 0) { orderID = 1; }

                else { orderID++; }
                Session["ssOrderID"] = orderID;

            }


        }
    }
}