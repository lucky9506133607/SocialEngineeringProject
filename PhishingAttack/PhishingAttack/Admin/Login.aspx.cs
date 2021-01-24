using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace PhishingAttack.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string LoginID = WebConfigurationManager.AppSettings["AdminLoginId"];
            string pass = WebConfigurationManager.AppSettings["AdminPassword"];

            if (txtLoginId.Text == LoginID && txtPassword.Text == pass)
            {
                Session["PhishingAttack"] = "PhishingAttack";
                Response.Redirect("/Admin/AddCategory.aspx");
            }
            else
            {
                lblAlert.Text = "Envalid id and password";
            }
        }
    }
}