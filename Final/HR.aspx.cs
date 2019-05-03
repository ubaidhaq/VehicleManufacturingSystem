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
    
    public partial class HR : System.Web.UI.Page
    {

        string loginid;
        string tpost;
        StringBuilder errorMessages = new StringBuilder();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (tpost == "Clerk" || tpost == "Officer")
            {
                Response.Write("Error: rights issue");
            }
            else
            {
                if((gender.Text== "Male" ||gender.Text=="Female") && (job.Text=="Officer"||job.Text=="Clerk"||job.Text=="President" ||job.Text=="Department head")){
                SqlConnection conc = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
                conc.Open();
                if ( mgr_id.Text=="" && comm.Text == "")
                {
                    
                    String qurey = "insert into Employee (emp_id,First_Name,Last_Name,job,Gender,Department_No,Salary,House_No,Area,Town,City) values(@id1,@id2,@id3,@id4,@id6,@id7,@id9,@id10,@id11,@id12,@id13)";
                    SqlCommand cmd = new SqlCommand(qurey, conc);
                    cmd.Parameters.AddWithValue("@id1", empid.Text);
                    cmd.Parameters.AddWithValue("@id2", fname.Text);
                    cmd.Parameters.AddWithValue("@id3", lname.Text);
                    cmd.Parameters.AddWithValue("@id4", job.Text);
                    //cmd.Parameters.AddWithValue("@id5", mgr_id.Text);
                    cmd.Parameters.AddWithValue("@id6", gender.Text);
                    cmd.Parameters.AddWithValue("@id7", deptno.Text);
                    //cmd.Parameters.AddWithValue("@id8", comm.Text);
                    cmd.Parameters.AddWithValue("@id9", sal.Text);
                    cmd.Parameters.AddWithValue("@id10", house_num.Text);
                    cmd.Parameters.AddWithValue("@id11", area.Text);
                    cmd.Parameters.AddWithValue("@id12", town.Text);
                    cmd.Parameters.AddWithValue("@id13", city.Text);
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
                else if (comm.Text == "")
                {

                    String qurey = "insert into Employee (emp_id,First_Name,Last_Name,job,Manager_Id,Gender,Department_No,Salary,House_No,Area,Town,City) values(@id1,@id2,@id3,@id4,@id5,@id6,@id7,@id9,@id10,@id11,@id12,@id13)";
                    SqlCommand cmd = new SqlCommand(qurey, conc);
                    cmd.Parameters.AddWithValue("@id1", empid.Text);
                    cmd.Parameters.AddWithValue("@id2", fname.Text);
                    cmd.Parameters.AddWithValue("@id3", lname.Text);
                    cmd.Parameters.AddWithValue("@id4", job.Text);
                    cmd.Parameters.AddWithValue("@id5", mgr_id.Text);
                    cmd.Parameters.AddWithValue("@id6", gender.Text);
                    cmd.Parameters.AddWithValue("@id7", deptno.Text);
                    //cmd.Parameters.AddWithValue("@id8", comm.Text);
                    cmd.Parameters.AddWithValue("@id9", sal.Text);
                    cmd.Parameters.AddWithValue("@id10", house_num.Text);
                    cmd.Parameters.AddWithValue("@id11", area.Text);
                    cmd.Parameters.AddWithValue("@id12", town.Text);
                    cmd.Parameters.AddWithValue("@id13", city.Text);
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
                else if (mgr_id.Text == "")
                {

                    String qurey = "insert into Employee (emp_id,First_Name,Last_Name,job,Gender,Department_No,Commision,Salary,House_No,Area,Town,City) values(@id1,@id2,@id3,@id4,@id6,@id7,@id8,@id9,@id10,@id11,@id12,@id13)";
                    SqlCommand cmd = new SqlCommand(qurey, conc);
                    cmd.Parameters.AddWithValue("@id1", empid.Text);
                    cmd.Parameters.AddWithValue("@id2", fname.Text);
                    cmd.Parameters.AddWithValue("@id3", lname.Text);
                    cmd.Parameters.AddWithValue("@id4", job.Text);
                    //cmd.Parameters.AddWithValue("@id5", mgr_id.Text);
                    cmd.Parameters.AddWithValue("@id6", gender.Text);
                    cmd.Parameters.AddWithValue("@id7", deptno.Text);
                    cmd.Parameters.AddWithValue("@id8", comm.Text);
                    cmd.Parameters.AddWithValue("@id9", sal.Text);
                    cmd.Parameters.AddWithValue("@id10", house_num.Text);
                    cmd.Parameters.AddWithValue("@id11", area.Text);
                    cmd.Parameters.AddWithValue("@id12", town.Text);
                    cmd.Parameters.AddWithValue("@id13", city.Text);
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
                
                else
                {

                    String qurey = "insert into Employee (emp_id,First_Name,Last_Name,job,Manager_Id,Gender,Department_No,Commision,Salary,House_No,Area,Town,City) values(@id1,@id2,@id3,@id4,@id5,@id6,@id7,@id8,@id9,@id10,@id11,@id12,@id13)";
                    SqlCommand cmd = new SqlCommand(qurey, conc);
                    cmd.Parameters.AddWithValue("@id1", empid.Text);
                    cmd.Parameters.AddWithValue("@id2", fname.Text);
                    cmd.Parameters.AddWithValue("@id3", lname.Text);
                    cmd.Parameters.AddWithValue("@id4", job.Text);
                    cmd.Parameters.AddWithValue("@id5", mgr_id.Text);
                    cmd.Parameters.AddWithValue("@id6", gender.Text);
                    cmd.Parameters.AddWithValue("@id7", deptno.Text);
                    cmd.Parameters.AddWithValue("@id8", comm.Text);
                    cmd.Parameters.AddWithValue("@id9", sal.Text);
                    cmd.Parameters.AddWithValue("@id10", house_num.Text);
                    cmd.Parameters.AddWithValue("@id11", area.Text);
                    cmd.Parameters.AddWithValue("@id12", town.Text);
                    cmd.Parameters.AddWithValue("@id13", city.Text);
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

            }
                else{
                    Response.Write("Invalid Domain");
                }
            }
            


        }

      
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
            label_post.Text = "Post: " + post;


            conc.Close();
            if (tpost == "Clerk" || tpost == "Officer")
            {
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                Button1.Visible = false;
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

        protected void Button1_Click2(object sender, EventArgs e)
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
                    Response.Write("No Employee Found jotee lagen gy aenda esy hrkat kari toh!!!");
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

            if (temp == 1)
            {



                string qurey = "update employee set Task_Assign='" + TextBox2.Text + "' where emp_id='" + TextBox1.Text + "'";
                SqlCommand cmd = new SqlCommand(qurey, conc);
                try
                {
                    cmd.ExecuteNonQuery();
                    GridView2.DataBind();
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
            else Response.Write("invalid Employee is selected");
            conc.Close();
            
        }

        protected void fname_TextChanged(object sender, EventArgs e)
        {
           /* SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBconnect"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Employee values('" + empid.Text + "','" + fname.Text + "','" + lname.Text + "','" + job.Text + "','" + passsword.Text + "','" + mgr_id.Text + "','" + task_ass.Text + "','" + gender.Text + "','" + deptno.Text + "','" + comm.Text + "','" + sal.Text + "','" + house_num.Text + "','" + area.Text + "','" + town.Text + "','" + city.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Label1.Visible = true;
            //Label1.Text = "Data Stored Successfully.";
            empid.Text = "";
            fname.Text = "";
            lname.Text = "";
            job.Text = "";
            passsword.Text = "";
            mgr_id.Text = "";
            task_ass.Text = "";
            gender.Text = "";
            deptno.Text = "";
            comm.Text = "";
            sal.Text = "";
            house_num.Text = "";
            area.Text = "";
            town.Text = "";
            city.Text = "";*/
        }

       
    }
}