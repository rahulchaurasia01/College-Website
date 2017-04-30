using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;

public partial class Contact_Us : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Contactus.mdf;Integrated Security=True");

    public DataSet sqlcall(String str)
    {
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        DataSet dsa = new DataSet();
        adp.Fill(dsa);
        return dsa;
    }

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

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(contactusTextBox1.Text=="" || contactusTextBox2.Text=="" || contactusDropDownList1.SelectedValue=="-1" || contactusDropDownList2.SelectedValue=="-1" || contactusTextBox3.Text=="" || contactusTextBox4.Text=="")
        {
            Label6.ForeColor = System.Drawing.Color.Red;
            Label6.Text = "Fill all The Detail";
        }
        else
        {
            try
            {
                String str = "INSERT into [Table](Name, Email_Id, Department, Class, Subject, Message) Values('" + contactusTextBox1.Text + "','" + contactusTextBox2.Text + "', '" + contactusDropDownList1.SelectedValue + "', '" + contactusDropDownList2.SelectedValue + "', '" + contactusTextBox3.Text + "', '" + contactusTextBox4.Text + "')";
                sqlq(str);

                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("rahulchaurasia08@gmail.com");
                mailMessage.To.Add("" + contactusTextBox2.Text);
                mailMessage.Subject = contactusTextBox3.Text;
                mailMessage.Body = "Thanking for Contacting Us. <br/>"
                                    + "Will try our best to Solve your Problem as soon as possible";
                mailMessage.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("rahulchaurasia08@gmail.com", "Chaurasia1");
                smtpClient.Send(mailMessage);
                Label6.ForeColor = System.Drawing.Color.Blue;
                Label6.Text = "Thanking you for contacting us";

                

                contactusTextBox1.Text = "";
                contactusTextBox2.Text = "";
                contactusDropDownList1.SelectedValue = "-1";
                contactusDropDownList2.SelectedValue = "-1";
                contactusTextBox3.Text = "";
                contactusTextBox4.Text = "";
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
                Label6.ForeColor = System.Drawing.Color.Red;
                Label6.Text = "There is an Unknown Problem";
            }
        }
    }
}