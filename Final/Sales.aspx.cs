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
    public partial class Accounts : System.Web.UI.Page
    {
        string loginid;
        string tpost;
        string colorid;
        string carid;
        string mettalic="mettalic";
        string gloss = "gloss";
        string matte = "matte";
        StringBuilder errorMessages = new StringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            string loginperson = Request.QueryString["loginperson"];
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();
            String qurey = "select job from employee where emp_id='" + loginperson + "'";
            SqlCommand cmd = new SqlCommand(qurey, conc);
            string post = cmd.ExecuteScalar().ToString().Replace(" ", "");
            Label_id.Text = "ID: " + loginperson;
            tpost = post;
            loginid = loginperson;
            Label_post.Text = "Post: " + post;
           

            conc.Close();
            if (tpost == "Clerk" || tpost == "Officer")
            {
                TextBox_Id.Visible = false;
                TextBox_Assign_task.Visible = false;
                Button_up.Visible = false;
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

       

       
        protected void Button_submit_Click(object sender, EventArgs e)
        {

            if (tpost == "Clerk" || tpost == "Officer")
            {
                Response.Write("Error: rights issue");
            }
           
            else
            {
                SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
                conc.Open();
                if (CheckBox1.Checked && CheckBox2.Checked)
                {

                       colorid = colour_id.Text;
                        carid = TextBox1.Text;
                        updatetable();
                }

                else if (CheckBox1.Checked)
                {
                    String qurey = "insert into Car values(@id1,@id2,@id3,@id4,@id5)";
                    SqlCommand cmd = new SqlCommand(qurey, conc);
                    cmd.Parameters.AddWithValue("@id1", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@id2", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@id3", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@id4", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@id5", TextBox5.Text);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        colorid = colour_id.Text;
                        carid = TextBox1.Text;
                        updatetable();
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
                else if (CheckBox2.Checked)
                {
                    if (type.Text == mettalic || type.Text == matte || type.Text == gloss)
                    {
                        String qurey = "insert into Colour values(@id6,@id7,@id8)";
                        SqlCommand cmd = new SqlCommand(qurey, conc);
                        cmd.Parameters.AddWithValue("@id6", colour_id.Text);
                        cmd.Parameters.AddWithValue("@id7", name.Text);
                        cmd.Parameters.AddWithValue("@id8", type.Text);

                        try
                        {

                            cmd.ExecuteNonQuery();
                            colorid = colour_id.Text;
                            carid = TextBox1.Text;
                            updatetable();
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

                    else
                    {
                        Response.Write("Domain Problem");
                    }
                    


                }
                else if ((!CheckBox1.Checked) && (!CheckBox2.Checked))
                {


                    if (type.Text == mettalic || type.Text == matte || type.Text == gloss)
                    {
                        String qurey = "insert into Colour values(@id6,@id7,@id8)";
                        SqlCommand cmd = new SqlCommand(qurey, conc);
                        cmd.Parameters.AddWithValue("@id6", colour_id.Text);
                        cmd.Parameters.AddWithValue("@id7", name.Text);
                        cmd.Parameters.AddWithValue("@id8", type.Text);

                        try
                        {
                            
                            colorid = colour_id.Text;
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
                        qurey = "insert into Car values(@id1,@id2,@id3,@id4,@id5)";
                        SqlCommand cmd1 = new SqlCommand(qurey, conc);
                        cmd1.Parameters.AddWithValue("@id1", TextBox1.Text);
                        cmd1.Parameters.AddWithValue("@id2", TextBox2.Text);
                        cmd1.Parameters.AddWithValue("@id3", TextBox3.Text);
                        cmd1.Parameters.AddWithValue("@id4", TextBox4.Text);
                        cmd1.Parameters.AddWithValue("@id5", TextBox5.Text);
                        try
                        {
                            
                            cmd1.ExecuteNonQuery();
                            cmd.ExecuteNonQuery();
                            carid = TextBox1.Text;
                            updatetable();
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
                    else
                    {
                        Response.Write("Domain Problem");
                    }

                }
               
            }



        }

        protected void updatetable()
        {
            SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();

            String qurey = "insert into CCR values(@id11,@id12)";
            SqlCommand cmd = new SqlCommand(qurey, conc);
            cmd.Parameters.AddWithValue("@id11",carid);
            cmd.Parameters.AddWithValue("@id12",colorid);
            cmd.ExecuteNonQuery();
            GridView1.DataBind();

            conc.Close();

        }
     
        protected void Button1_Click(object sender, EventArgs e)
        {
               SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            conc.Open();
            string checkdept = "select Department_No from employee where emp_id='" +TextBox_Id.Text+ "'";
            SqlCommand cmd2 = new SqlCommand(checkdept, conc);
            int temp=0;
          
                
             try
                    {
                        if (cmd2.ExecuteScalar() != null)
                            temp = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
                        else
                            Response.Write("No Employee Found");
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
                    
            if (temp == 4)
            {

           
           
             string qurey = "update employee set Task_Assign='" +TextBox_Assign_task.Text + "' where emp_id='"+TextBox_Id.Text+"'";
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

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }

       

    }
        }

     
        