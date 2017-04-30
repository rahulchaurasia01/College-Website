using System;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");
    string man, sand;


    public void sqlq(String str)
    {
        SqlCommand com = new SqlCommand(str, con);
        con.Open();
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        SqlDataAdapter fan = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string honey = "select Department, Class from [Table] where Email_Id = '" + studentloginTextBox1.Text + "'";
        con.Open();
        fan.SelectCommand = new SqlCommand(honey, con);
        fan.Fill(ds);
        
        con.Close();

        if (temp==1)
        {
            man = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            sand = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            Session["studentdepartment"] = man;
            Session["studentclass"] = sand;
            Session["studentemail"] = studentloginTextBox1.Text;
            Response.Redirect("~/Login/Student/Studenthome.aspx");
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
            String mia = "Student";
            String str = "select count(*) from [Table] where Email_Id = '" + studentloginTextBox1.Text + "' and Password = '" + studentloginTextBox2.Text + "' and User_As = '" + mia + "' ";
            sqlq(str);

        }
        else
        {
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Text = "Fill all the details";
        }
    }
}