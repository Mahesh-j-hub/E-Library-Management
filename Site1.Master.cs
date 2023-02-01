using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elibrary_management
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //userlogin 
                    LinkButton2.Visible = true; //signup
                    LinkButton6.Visible = true; //admin login
                    LinkButton3.Visible = false; //logout
                    LinkButton5.Visible = false; //hello user
                    LinkButton7.Visible = false; //author
                    LinkButton8.Visible = false; //publisher
                    LinkButton9.Visible = false; //book inventory
                    LinkButton10.Visible = false; //book issuing
                    LinkButton11.Visible = false; //member management
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //userlogin 
                    LinkButton2.Visible = false; //signup
                    LinkButton6.Visible = true; //admin login
                    LinkButton3.Visible = true; //logout
                    LinkButton5.Visible = true; //hello user
                    LinkButton5.Text = "Hello " + Session["username"].ToString();

                    LinkButton7.Visible = false; //author
                    LinkButton8.Visible = false; //publisher
                    LinkButton9.Visible = false; //book inventory
                    LinkButton10.Visible = false; //book issuing
                    LinkButton11.Visible = false; //member management
                }
                else
                {
                    LinkButton1.Visible = false; //userlogin 
                    LinkButton2.Visible = false; //signup
                    LinkButton6.Visible = false; //admin login
                    LinkButton3.Visible = true; //logout
                    LinkButton5.Visible = true; //hello user
                    LinkButton5.Text = "Hello Admin";
                    LinkButton7.Visible = true; //author
                    LinkButton8.Visible = true; //publisher
                    LinkButton9.Visible = true; //book inventory
                    LinkButton10.Visible = true; //book issuing
                    LinkButton11.Visible = false; //member management

                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("user signup.aspx");
        }

        protected void LinkBUtton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkBUtton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("author management.aspx");
        }

        protected void LinkBUtton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Publisher management.aspx");
        }
        protected void LinkBUtton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("BOOK INVENTORY.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; //userlogin 
            LinkButton2.Visible = true; //signup
            LinkButton6.Visible = true; //admin login
            LinkButton3.Visible = false; //logout
            LinkButton5.Visible = false; //hello user
            LinkButton7.Visible = false; //author
            LinkButton8.Visible = false; //publisher
            LinkButton9.Visible = false; //book inventory
            LinkButton10.Visible = false; //book issuing
            LinkButton11.Visible = false; //member management
        }
        protected void LinkBUtton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("book issuing.aspx");
        }
    }
}