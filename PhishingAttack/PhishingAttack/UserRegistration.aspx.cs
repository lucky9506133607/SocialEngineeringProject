using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace PhishingAttack
{
    public partial class Default : System.Web.UI.Page
    {
        string encryptpwd;
        static string decryptedpwd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnForgotPassword_Click(object sender, EventArgs e)
        {
            pnlLogin.Visible = false;
            pnlForgotAccount.Visible = true;
            Panel1.Visible = false;
        }

        protected void lbtnCreateAccount_Click(object sender, EventArgs e)
        {
            pnlLogin.Visible = false;
            pnlCreateAccount.Visible = true;
            Panel1.Visible = false;
        }
        
        protected void thirdpnlbtncolor_Click(object sender, EventArgs e)
        {
            Boolean useravailable;
            useravailable = checkusername(txtNewUserName.Text);
            string country = ddlCountry.SelectedItem.Text;
            if (useravailable)
            {
                if (txtUserPassword.Text == txtConfirmPassword.Text)
                {
                    encryption();
                    string mycon = "Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
                    string query = "insert into UserDetails(UserName,Password,Email,Age,Country) values ('" + txtNewUserName.Text + "','" + encryptpwd + "','" + txtEmail.Text + "','" + txtAge.Text + "','" + country + "')";
                    SqlConnection con = new SqlConnection(mycon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = query;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Login Successful')</script>");
                    txtNewUserName.Text = "";
                    txtUserPassword.Text = "";
                    txtConfirmPassword.Text = "";
                    txtEmail.Text = "";
                    txtAge.Text = "";

                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript' > alert ('Password doesn't match')</script>");
                }

            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' > alert ('User name not available!!')</script>");
            }

        }
        public void encryption()
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[txtUserPassword.Text.ToString().Length];
            encode = Encoding.UTF8.GetBytes(txtUserPassword.Text);
            strmsg = Convert.ToBase64String(encode);
            encryptpwd = strmsg;
        }


        public Boolean checkusername(String username)
        {
            Boolean userstatus;

        string mycon = "Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
        string query = "select * from UserDetails where UserName = '"+ txtNewUserName.Text +"'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            userstatus = false;
        }
        else
        {
            userstatus = true;
        }
        con.Close();
        return userstatus;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
          
            pnlCreateAccount.Visible = false;
            pnlLogin.Visible = true;
            Panel1.Visible = true;
        }

      

        protected void secondpnlbtncolor_Click(object sender, EventArgs e)
        {
            if (txtNewPassword.Text == txtReEnterPassword.Text)
            {
                string mycon = "Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
                string query = "update UserDetails set Password = '" + txtNewPassword.Text + "' where UserName = '" + txtUserName.Text + "'";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                con.Close();
                pnlLogin.Visible = true;
                pnlForgotAccount.Visible = false;
            }
            else
            { 
            Response.Write("<script LANGUAGE='JavaScript' >alert('Password doesn't match!!')</script>");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string mycon ="Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            string query = "select * from UserDetails where UserName = '"+ txtUserName.Text +"'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            string uname;
            string pass;
            try
            {
                uname = ds.Tables[0].Rows[0]["UserName"].ToString();
                pass = ds.Tables[0].Rows[0]["Password"].ToString();
                con.Close();
                decrypted(pass);
                if (uname == txtUserName.Text && decryptedpwd == txtPassword.Text)  //@lucky123 password
                {
                    Session["UserName"] = uname;
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Login Successful')</script>");
                    Response.Redirect("~/Default.aspx");
                    //Server.Transfer("~/Default.aspx");
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Please Check Username and Password!!')</script>");
                }
            }
            catch
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Please Check Username and Password!!')</script>");
            }
        }

        private void decrypted(string encryptedpwd)
        {
            string decryptpwd = string.Empty;
            UTF8Encoding encoded = new UTF8Encoding();
            Decoder decode = encoded.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encryptedpwd);
            int charCount = decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            decryptpwd = new string(decoded_char);
            decryptedpwd = decryptpwd;
        }
    }
}