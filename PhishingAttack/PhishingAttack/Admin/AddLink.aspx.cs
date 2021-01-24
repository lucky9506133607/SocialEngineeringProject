using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace PhishingAttack.Admin
{
    public partial class AddLink : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string linkName = txtLinkName.Text.ToString();
            string selCatName = selCategory.SelectedItem.Text;
            string selCatID = selCategory.SelectedItem.Value;
            logoImageUpload.SaveAs(Server.MapPath("~/LinkImages/") + Path.GetFileName(logoImageUpload.FileName));
            string imageLink = "~/LinkImages/" + Path.GetFileName(logoImageUpload.FileName);
                      		    
            string  mycon = "Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
            string query = "insert into AddLink(LinkName,LinkCategory,ImageLink,CategoryId) values('" + linkName + "','" + selCatName + "','" + imageLink + "','" + selCatID + "')";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();        
        }
    }
}