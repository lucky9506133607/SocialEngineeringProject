using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhishingAttack.Admin
{
    public partial class GenerateLink : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Session["AttackerUsername"] != null)
            {
                string sendusername = Session["AttackerUsername"].ToString();
                Response.Write("<script LANGUAGE='JavaScript' >alert('" + sendusername +"')</script>");

                


            }
        }
    }
}