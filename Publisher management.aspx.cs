using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elibrary_management
{
    public partial class Publisher_management : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        private SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                show();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfPublisherExists())
            {
                Response.Write("<script>alert(' Publisher with this ID already Exist.');</script>");
            }
            else
            {
                addNewPublisher();
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfPublisherExists())
            {
                UpdatePublisher();
            }
            else
            {
                Response.Write("<script>alert(' Author does not Exist.');</script>");
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            getPublisherByID();
        }
        void getPublisherByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from publisher_master_tbl where publisher_id='" + TextBox1.Text.Trim() + " ';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Author ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");


            }
        }
        


        void UpdatePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE publisher_master_tbl SET publisher_name=@publisher_name WHERE publisher_id='" + TextBox1.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher updated Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");

            }
        }
        void addNewPublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO publisher_master_tbl(publisher_id,publisher_name)values(@publisher_id,@publisher_name)", con);
                cmd.Parameters.AddWithValue("@publisher_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher added Successfully');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");

            }
        }

        bool checkIfPublisherExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from publisher_master_tbl where publisher_id='" + TextBox1.Text.Trim() + " '", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
                return false;

            }
        }
        void clearForm()
        {
            TextBox1.Text = " ";
            TextBox2.Text = " ";
        }
        public void show()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from publisher_master_tbl where Status=NULL ", con);
            SqlDataAdapter sdata = new SqlDataAdapter(cmd);
            DataTable dta = new DataTable();
            sdata.Fill(dta);
            //GridView1.DataSource = dta;
            GridView1.DataBind();
            con.Close();
        }

        protected void chkbox_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow vrow in GridView1.Rows)
            {
                CheckBox chkbox = (CheckBox)vrow.FindControl("chkbox");
                if (chkbox.Checked == true)
                {
                    Button btn_del = (Button)vrow.FindControl("btn_del");
                }
            }
        }

        protected void btn_del_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow vrow in GridView1.Rows)
            {
                CheckBox chkbox = (CheckBox)vrow.FindControl("chkbox");
                if (chkbox.Checked == true)
                {
                    string ide = GridView1.DataKeys[vrow.RowIndex].Value.ToString();
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("update publisher_master_tbl set Status='1' where publisher_id='" + ide + "'", con);
                    cmd.ExecuteNonQuery();
                    show();
                    //Response.Write("<script>alert('Record has been deleted...');window.location.herf='Publisher management.aspx';</script>");
                    con.Close();
                }
            }       
                
        }

       

         
   }     
}