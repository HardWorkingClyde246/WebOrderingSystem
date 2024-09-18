using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Web_Assignment_2.Admin
{
    public partial class addmenuitem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con;
            string constr = ConfigurationManager.ConnectionStrings["ConnectionStringA"].ConnectionString;
            con = new SqlConnection(constr);
            con.Open();

            int itemID;
            int catID;
            string itemLabel;
            string itemDescription;
            float price;

            itemID = int.Parse(txtItemID.Text);
            catID = int.Parse(txtCatID.Text);
            itemLabel = txtItemLabel.Text;
            itemDescription = txtItemDesc.Text;
            price = float.Parse(txtItemPrice.Text);






            string strInsrt = "INSERT INTO MenuItem (itemID, itemLabel, itemDescription, price, categoryID) VALUES (@itemID, @itmLabel, @itmDesc, @price, @catID)";

            SqlCommand cmdInsrt1 = new SqlCommand(strInsrt, con);

            // Adding parameters correctly
            cmdInsrt1.Parameters.AddWithValue("@itemID", itemID);
            cmdInsrt1.Parameters.AddWithValue("@itmLabel", itemLabel);
            cmdInsrt1.Parameters.AddWithValue("@itmDesc", itemDescription);
            cmdInsrt1.Parameters.AddWithValue("@price", price);
            cmdInsrt1.Parameters.AddWithValue("@catID", catID);

            // Execute the command
            cmdInsrt1.ExecuteNonQuery();




            con.Close();

            
        }
    }
}