using System;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");
    SqlCommand com = new SqlCommand();

    public void sqlq(String str)
    {
        SqlCommand com = new SqlCommand(str, con);
        con.Open();
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if(temp==1)
        {
            Session["facultyemail"] = facultyloginTextBox1.Text;
            Response.Redirect("~/Login/Faculty/facultyhome.aspx");
        }
        else
        {
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Text = "Invalid username or password";
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void button1_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {

            String lucy = "Faculty";
            String str = "select count(*) from [Table] where Email_Id = '" + facultyloginTextBox1.Text + "' and Password = '" + facultyloginTextBox2.Text + "' and User_As = '" + lucy + "' ";
            sqlq(str);
        }
        else
        {
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Text = "Fill all the details";
        }
    }
}