using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Diagnostics;
using System.Text;


namespace Vehicle_Manufacturing_System
{
    public partial class Marketing : System.Web.UI.Page
    {
        string loginid;
        string tpost;
        StringBuilder errorMessages = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginperson = Request.QueryString["loginperson"];
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();
            String qurey = "select job from employee where emp_id='" + loginperson + "'";
            SqlCommand cmd = new SqlCommand(qurey, conc);
            string post = cmd.ExecuteScalar().ToString().Replace(" ", "");
            label_id.Text = "ID: " + loginperson;
            tpost = post;
            loginid = loginperson;
            Label_post.Text = "Post: " + post;


            conc.Close();
            if (post == "President")
            {
                SqlDataSource SqlDataSource2 = new SqlDataSource();
                SqlDataSource2.ID = "SqlDataSource2";
                this.Page.Controls.Add(SqlDataSource2);
                SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString;
                SqlDataSource2.SelectCommand = "SELECT emp_id,First_Name,Last_Name,Task_Assign,Department_No from Employee where Manager_Id='" + loginid + "'";
                GridView2.DataSource = SqlDataSource2;
                GridView2.DataBind();
                
                
            }
            else if (post == "Departmenthead")
                {
                    GridView3.Visible = false;
                    Label1.Visible = false;
                    Label2.Visible = false;
                    Button2.Visible = false;
                    Button3.Visible = false;
                    DropDownList1.Visible = false;
                    TextBox3.Visible = false;
                    SqlDataSource SqlDataSource2 = new SqlDataSource();
                    SqlDataSource2.ID = "SqlDataSource2";
                    this.Page.Controls.Add(SqlDataSource2);
                    SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString;
                    SqlDataSource2.SelectCommand = "SELECT emp_id,First_Name,Last_Name,Task_Assign,Department_No from Employee where Manager_Id='" + loginid + "'";
                    GridView2.DataSource = SqlDataSource2;
                    GridView2.DataBind();
                    
                }
            

            else 
            {
                
                GridView3.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                DropDownList1.Visible = false;
                TextBox3.Visible = false;
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                Button1.Visible = false;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             
            SqlDataSource SqlDataSource3 = new SqlDataSource();
            SqlDataSource3.ID = "SqlDataSource3";
            this.Page.Controls.Add(SqlDataSource3);
            SqlDataSource3.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString;
            SqlDataSource3.SelectCommand = "SELECT * from "+DropDownList1.SelectedValue ;
            GridView3.DataSource = SqlDataSource3;
            GridView3.DataBind();
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();

            if (DropDownList1.SelectedValue == "Employee")
            {
                string qurey = "Delete employee where emp_id='" + TextBox3.Text + "'";

                SqlCommand cmd = new SqlCommand(qurey, conc);
                try
                {
                    if (cmd.ExecuteNonQuery() < 1)
                        Response.Write("Employee dosen't exsist.");
                    else
                    {
                        GridView1.DataBind();
                        GridView2.DataBind();
                        GridView3.DataBind();
                    }
                }
                catch (SqlException ex)
                {

                    for (int i = 0; i < ex.Errors.Count; i++)
                    {
                        errorMessages.Append("Index #" + i + "\n" +
                            "Message: " + ex.Errors[i].Message + "\n" +
                            "LineNumber: " + ex.Errors[i].LineNumber + "\n" +
                            "Source: " + ex.Errors[i].Source + "\n" +
                            "Procedure: " + ex.Errors[i].Procedure + "\n");
                    }
                    Response.Write(errorMessages.ToString());
                }
            }
            else if (DropDownList1.SelectedValue == "Department")
            {
                string qurey = "Delete Department where deptno='" + TextBox3.Text + "'";

                SqlCommand cmd = new SqlCommand(qurey, conc);
                try
                {
                    if (cmd.ExecuteNonQuery() < 1)
                        Response.Write("Department dosen't exsist.");
                    else
                    {
                        GridView1.DataBind();
                        GridView2.DataBind();
                        GridView3.DataBind();
                    }
                    
     
                }
                catch (SqlException ex)
                {

                    for (int i = 0; i < ex.Errors.Count; i++)
                    {
                        errorMessages.Append("Index #" + i + "\n" +
                            "Message: " + ex.Errors[i].Message + "\n" +
                            "LineNumber: " + ex.Errors[i].LineNumber + "\n" +
                            "Source: " + ex.Errors[i].Source + "\n" +
                            "Procedure: " + ex.Errors[i].Procedure + "\n");
                    }
                    Response.Write(errorMessages.ToString());
                }
            }
            else if (DropDownList1.SelectedValue == "Colour")
            {
                string qurey = "Delete Colour where Colour_id='" + TextBox3.Text + "'";

                SqlCommand cmd = new SqlCommand(qurey, conc);
                try
                {
                    if (cmd.ExecuteNonQuery() < 1)
                        Response.Write("Colour dosen't exsist.");
                    else
                    {
                        GridView1.DataBind();
                        GridView2.DataBind();
                        GridView3.DataBind();
                    }
                    
                }
                catch (SqlException ex)
                {

                    for (int i = 0; i < ex.Errors.Count; i++)
                    {
                        errorMessages.Append("Index #" + i + "\n" +
                            "Message: " + ex.Errors[i].Message + "\n" +
                            "LineNumber: " + ex.Errors[i].LineNumber + "\n" +
                            "Source: " + ex.Errors[i].Source + "\n" +
                            "Procedure: " + ex.Errors[i].Procedure + "\n");
                    }
                    Response.Write(errorMessages.ToString());
                }
            }
            else if (DropDownList1.SelectedValue == "Customer")
            {
                string qurey = "Delete Customer where Customer_id='" + TextBox3.Text + "'";

                SqlCommand cmd = new SqlCommand(qurey, conc);
                try
                {
                    if (cmd.ExecuteNonQuery() < 1)
                        Response.Write("Customer dosen't exsist.");
                    else
                    {
                        GridView1.DataBind();
                        GridView2.DataBind();
                        GridView3.DataBind();
                    }
                    
                }
                catch (SqlException ex)
                {

                    for (int i = 0; i < ex.Errors.Count; i++)
                    {
                        errorMessages.Append("Index #" + i + "\n" +
                            "Message: " + ex.Errors[i].Message + "\n" +
                            "LineNumber: " + ex.Errors[i].LineNumber + "\n" +
                            "Source: " + ex.Errors[i].Source + "\n" +
                            "Procedure: " + ex.Errors[i].Procedure + "\n");
                    }
                    Response.Write(errorMessages.ToString());
                }
            }
            else if (DropDownList1.SelectedValue == "Car_Sold")
            {
                string qurey = "Delete Car_sold where chassis_no='" + TextBox3.Text + "'";

                SqlCommand cmd = new SqlCommand(qurey, conc);
                try
                {
                    if (cmd.ExecuteNonQuery() < 1)
                        Response.Write("Chassis number dosen't exsist.");
                    else
                    {
                        GridView1.DataBind();
                        GridView2.DataBind();
                        GridView3.DataBind();
                    }
                }
                catch (SqlException ex)
                {

                    for (int i = 0; i < ex.Errors.Count; i++)
                    {
                        errorMessages.Append("Index #" + i + "\n" +
                            "Message: " + ex.Errors[i].Message + "\n" +
                            "LineNumber: " + ex.Errors[i].LineNumber + "\n" +
                            "Source: " + ex.Errors[i].Source + "\n" +
                            "Procedure: " + ex.Errors[i].Procedure + "\n");
                    }
                    Response.Write(errorMessages.ToString());
                }
            }
            else if (DropDownList1.SelectedValue == "Car")
            {
                string qurey = "Delete Car where Car_id='" + TextBox3.Text + "'";

                SqlCommand cmd = new SqlCommand(qurey, conc);
                try
                {
                    if (cmd.ExecuteNonQuery() < 1)
                        Response.Write("Car dosen't exsist.");
                    else
                    {
                        GridView1.DataBind();
                        GridView2.DataBind();
                        GridView3.DataBind();
                    }
                }
                catch (SqlException ex)
                {

                    for (int i = 0; i < ex.Errors.Count; i++)
                    {
                        errorMessages.Append("Index #" + i + "\n" +
                            "Message: " + ex.Errors[i].Message + "\n" +
                            "LineNumber: " + ex.Errors[i].LineNumber + "\n" +
                            "Source: " + ex.Errors[i].Source + "\n" +
                            "Procedure: " + ex.Errors[i].Procedure + "\n");
                    }
                    Response.Write(errorMessages.ToString());
                }
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();
            string checkdept = "select Department_No from employee where emp_id='" + TextBox1.Text + "'";
            SqlCommand cmd2 = new SqlCommand(checkdept, conc);
            int temp = 0;


            try
            {
                if (cmd2.ExecuteScalar() != null)
                    temp = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
                else
                    Response.Write("No Employee Found.");
            }
            catch (SqlException ex)
            {

                for (int i = 0; i < ex.Errors.Count; i++)
                {
                    errorMessages.Append("Index #" + i + "\n" +
                        "Message: " + ex.Errors[i].Message + "\n" +
                        "LineNumber: " + ex.Errors[i].LineNumber + "\n" +
                        "Source: " + ex.Errors[i].Source + "\n" +
                        "Procedure: " + ex.Errors[i].Procedure + "\n");
                }
                Response.Write(errorMessages.ToString());
            }

            if (temp == 7 || tpost == "President")
            {



                string qurey = "update employee set Task_Assign='" + TextBox2.Text + "' where emp_id='" + TextBox1.Text + "'";
                SqlCommand cmd = new SqlCommand(qurey, conc);
                try
                {
                    cmd.ExecuteNonQuery();
                    GridView2.DataBind();

                }
                catch (SqlException ex)
                {
                    for (int i = 0; i < ex.Errors.Count; i++)
                    {
                        errorMessages.Append("Index #" + i + "\n" +
                            "Message: " + ex.Errors[i].Message + "\n" +
                            "LineNumber: " + ex.Errors[i].LineNumber + "\n" +
                            "Source: " + ex.Errors[i].Source + "\n" +
                            "Procedure: " + ex.Errors[i].Procedure + "\n");
                    }
                    Response.Write(errorMessages.ToString());
                }

            }
            else Response.Write("invalid Employee is selected");
            conc.Close();
        }

     
    }
}