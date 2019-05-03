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
    public partial class Sales : System.Web.UI.Page
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
            string post = cmd.ExecuteScalar().ToString().Replace(" ","");
            label_id.Text = "ID: " + loginperson;
            tpost = post;
            loginid = loginperson;
            Label_post.Text="Post: "+post;
            
            
            conc.Close();
            if (tpost == "Clerk" || tpost == "Officer")
            {
                text_id.Visible = false;
                text_no_task.Visible = false;
                Button_up_task.Visible = false;
            }
            else
            {

                SqlDataSource SqlDataSource2 = new SqlDataSource();
                SqlDataSource2.ID = "SqlDataSource2";
                this.Page.Controls.Add(SqlDataSource2);
                SqlDataSource2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString;
                SqlDataSource2.SelectCommand = "SELECT emp_id,First_Name,Last_Name,Task_Assign from Employee where Manager_Id='" + loginid + "'";
                GridView2.DataSource = SqlDataSource2;
                GridView2.DataBind();
            }

        }



        protected void Button_Submit_Click(object sender, EventArgs e)
        {
            if (tpost == "Clerk" || tpost == "Officer")
            {
                Response.Write("Error: rights issue");
            }
            else
            {
                SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
                conc.Open();

                if (CheckBox1.Checked)
                {
                    String qurey = "insert into Car_sold (emp_id,car_id,colour_id,customer_id,chassis_no,instalment_year,date_of_purchase) values(@id1,@id2,@id3,@id4,@cno,@yr,getdate())";
                    SqlCommand cmd = new SqlCommand(qurey, conc);
                    cmd.Parameters.AddWithValue("@id1", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@id2", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@id3", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@id4", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@cno", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@yr", TextBox6.Text);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        GridView1.DataBind();
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
                else if (!CheckBox1.Checked)
                {
                    String qurey = "insert into Customer values(@id5,@id6,@id7,@id8,@id9,@id10,@id11)";
                    SqlCommand cmd = new SqlCommand(qurey, conc);
                    cmd.Parameters.AddWithValue("@id5", cusid.Text);
                    cmd.Parameters.AddWithValue("@id6", fname.Text);
                    cmd.Parameters.AddWithValue("@id7", lname.Text);
                    cmd.Parameters.AddWithValue("@id8", house_num.Text);
                    cmd.Parameters.AddWithValue("@id9", area.Text);
                    cmd.Parameters.AddWithValue("@id10", town.Text);
                    cmd.Parameters.AddWithValue("@id11", city.Text);
                    try
                    {
                        
                        GridView1.DataBind();
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
                    qurey = "insert into Car_sold (emp_id,car_id,colour_id,customer_id,chassis_no,instalment_year,date_of_purchase) values(@id1,@id2,@id3,@id4,@cno,@yr,getdate())";
                    SqlCommand cmd1 = new SqlCommand(qurey, conc);
                    cmd1.Parameters.AddWithValue("@id1", TextBox1.Text);
                    cmd1.Parameters.AddWithValue("@id2", TextBox2.Text);
                    cmd1.Parameters.AddWithValue("@id3", TextBox3.Text);
                    cmd1.Parameters.AddWithValue("@id4", TextBox4.Text);
                    cmd1.Parameters.AddWithValue("@cno", TextBox5.Text);
                    cmd1.Parameters.AddWithValue("@yr", TextBox6.Text);
                    try
                    {
                        
                        cmd1.ExecuteNonQuery();
                        cmd.ExecuteNonQuery();
                        GridView1.DataBind();

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
                    conc.Close();

                }
            }
        }
            
        


        protected void Button_up_task_Click(object sender, EventArgs e)
        {
            
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();
            string checkdept = "select Department_No from employee where emp_id='" + text_id.Text + "'";
            SqlCommand cmd2 = new SqlCommand(checkdept, conc);
            int temp=0;
          
                
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
                    
            if (temp == 2)
            {

           
           
             string qurey = "update employee set Task_Assign='" + text_no_task.Text + "' where emp_id='"+text_id.Text+"'";
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