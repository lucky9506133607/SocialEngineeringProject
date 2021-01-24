using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace PhishingAttack
{
    public partial class popup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getip();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            logoImageUpload.SaveAs(Server.MapPath("~/LinkImages/") + Path.GetFileName(logoImageUpload.FileName));
            string link = "~/LinkImages/" + Path.GetFileName(logoImageUpload.FileName);
        }

        protected void getip()
        {
            string ipadd = string.Empty;
            if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDER_FOR"] != null)
            {
                ipadd = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDER_FOR"].ToString();
            }
            else if (HttpContext.Current.Request.UserHostAddress.Length != 0)
            {
                ipadd = HttpContext.Current.Request.UserHostAddress;
            }
            Label1.Text = "your ip address is :" + ipadd;

            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string mycon = "Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
            string query = "select * from Victims where UserName = 'priyam ' ";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);

            GridView2.DataSource = ds;
            GridView2.DataBind();
        }

        public void Button2_Click(object sender, EventArgs e)
        {
            call();
        }

       

        public void call()
        {
            string a = "help";
            string b = "I need";
            string c = b+ a;
            Response.Write(c);
         }
        public void Button3_Click(object sender, EventArgs e)
        {
            call();

        }
    }
}