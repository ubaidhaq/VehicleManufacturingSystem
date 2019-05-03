using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vehicle_Manufacturing_System
{
    public partial class Super_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string abc="muaaz";
            string bcd = "Anwar";
            string efg = "28A";

            if (TextBox1.Text == abc || TextBox1.Text == bcd || TextBox1.Text == efg)
            {
                Response.Write("text not equal");
                Response.Write("you wrote" + TextBox1.Text);
            }
            }

        }
    }
