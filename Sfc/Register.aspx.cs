using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");

    public void sqlq(String str)
    {
        SqlCommand com = new SqlCommand(str, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void button1_Click(object sender, EventArgs e)
    {
       if(Page.IsValid)
        {
            string today = DateTime.Now.ToString("dd/MM/yyyy");
            string current_time = DateTime.Now.ToLongTimeString();
            String str = "Insert into [Table](Name, Email_Id, Password, User_As, Day, Month, Year, Gender, Department, Class, Date_dd_mm_yy, Time_hr_min_sec) values('" + registerTextBox1.Text + "' , '" + registerTextBox2.Text + "' , '" + registerTextBox3.Text + "' , '" + registerDropDownList1.SelectedValue + "' , '" + registerDropDownList2.SelectedValue + "' , '" + registerDropDownList3.SelectedValue + "' , '" + registerDropDownList4.SelectedValue + "' , '" + registerDropDownList5.SelectedValue + "' , '" + registerDropDownList6.SelectedValue + "' , '" + registerDropDownList7.SelectedValue + "', '" + today + "', '" + current_time + "')";
            sqlq(str);

            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("rahulchaurasia08@gmail.com");
            mailMessage.To.Add("" + registerTextBox2.Text);
            mailMessage.Subject = "Welcome to Saraswati College of Engineering";
            mailMessage.Body = "<b>We warmly Welcome You to our college</b> <br/>"
                                + "Your Email-Id: " + registerTextBox2.Text + "<br/>"
                                + "Your Password: " + registerTextBox3.Text + "<br/>"
                                + "We Hope that you will attend the college regularly";
            mailMessage.IsBodyHtml = true;

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.EnableSsl = true;
            smtpClient.Credentials = new System.Net.NetworkCredential("rahulchaurasia08@gmail.com", "Chaurasia1");
            smtpClient.Send(mailMessage);

            if(registerDropDownList1.SelectedValue == "Faculty")
            {
                HyperLink2.NavigateUrl = "FacultyLogin.aspx";
                button2.Attributes.Add("data-target", "#login");
                Label9.ForeColor = System.Drawing.Color.Green;
                Label9.Text = "You Have Successfully Register";
                for (var i = 0; i <= 1000000000; i++)
                {
                    if (i == 1000000000)
                    {
                        Response.Redirect("FacultyLogin.aspx");
                    }
                }
            }
            if(registerDropDownList1.SelectedValue == "Student")
            {
                HyperLink2.NavigateUrl = "StudentLogin.aspx";
                Response.Redirect("StudentLogin.aspx");
            }

            registerTextBox1.Text = "";
            registerTextBox2.Text = "";
            registerTextBox3.Text = "";
            registerDropDownList1.SelectedValue = "-1";
            registerDropDownList2.SelectedValue = "-1";
            registerDropDownList3.SelectedValue = "-1";
            registerDropDownList4.SelectedValue = "-1";
            registerDropDownList5.SelectedValue = "-1";
            registerDropDownList6.SelectedValue = "-1";
            registerDropDownList7.SelectedValue = "-1";

            
            
        }
        else
        {
            Label9.ForeColor = System.Drawing.Color.Red;
            Label9.Text = "Fill all the Details";
        }
    }

    protected void registerTextBox2_TextChanged(object sender, EventArgs e)
    {
       
    }
}