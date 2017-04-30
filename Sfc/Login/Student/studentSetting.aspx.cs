using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Login_Student_Setting : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");
    string man, sand, zilla, milla, killa, bat;
    string cog = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True";

    public void sqlq(String str)
    {
        SqlDataAdapter fan = new SqlDataAdapter();
        DataSet ds = new DataSet();
        con.Open();
        fan.SelectCommand = new SqlCommand(str, con);
        fan.Fill(ds);
        man = ds.Tables[0].Rows[0].ItemArray[0].ToString();
        sand = ds.Tables[0].Rows[0].ItemArray[1].ToString();
        zilla = ds.Tables[0].Rows[0].ItemArray[2].ToString();
        milla = ds.Tables[0].Rows[0].ItemArray[3].ToString();
        killa = ds.Tables[0].Rows[0].ItemArray[4].ToString();
        bat = ds.Tables[0].Rows[0].ItemArray[5].ToString();
        con.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        string mia = Session["studentemail"].ToString();
        String str = "select Name, password, day, month, year, Gender from [Table] where Email_Id = '" + mia + "' ";
        sqlq(str);
        studentsettingTextBox1.Text = man;
        studentsettingTextBox2.Text = sand;
        studentsettingDropDownList1.SelectedValue = zilla;
        studentsettingDropDownList2.SelectedValue = milla;
        studentsettingDropDownList3.SelectedValue = killa;
        studentsettingDropDownList4.SelectedValue = bat;
    }

    protected void button1_Click(object sender, EventArgs e)
    {
        string mia = Session["studentemail"].ToString();
        String update = "Update [Table] set Name = '" + studentsettingTextBox1.Text + "', Password = '" + studentsettingTextBox2.Text + "', Day = '" + studentsettingDropDownList1.SelectedValue + "', Month = '" + studentsettingDropDownList2.SelectedValue + "', Year = '" + studentsettingDropDownList3.SelectedValue + "', Gender = '" + studentsettingDropDownList4.SelectedValue + "' where Email_Id = '" + mia + "'";
        sql2(update);
        
        if (FileUpload1.HasFile)
        {
            FileInfo fi = new FileInfo(FileUpload1.FileName);
            byte[] documentContent = FileUpload1.FileBytes;
            using (SqlConnection cn = new SqlConnection(cog))
            {
                SqlCommand cmd = new SqlCommand("spUploadImage", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@image_data", SqlDbType.VarBinary).Value = documentContent;
                cmd.Parameters.Add("@emailid", SqlDbType.VarChar).Value = mia;
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
        }
            Label3.ForeColor = System.Drawing.Color.Green;
            Label3.Text = "Your Setting has been saved";
    }

    private void sql2(string update)
    {
        SqlCommand sam = new SqlCommand(update, con);
        con.Open();
        sam.ExecuteNonQuery();
        con.Close();
    }

}