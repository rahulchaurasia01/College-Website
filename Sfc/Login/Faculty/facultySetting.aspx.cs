using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;

public partial class Login_Faculty_Setting : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");
    string man, sand, zilla, milla, killa, bat;
    string cog = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True";

    public void sql1(String str)
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
        if (!IsPostBack)
        {
            string mia = Session["facultyemail"].ToString();
            String str = "select Name, password, day, month, year, Gender from [Table] where Email_Id = '" + mia + "' ";
            sql1(str);
            facultysettingTextBox1.Text = man;
            facultysettingTextBox2.Text = sand;
            facultysettingDropDownList1.SelectedValue = zilla;
            facultysettingDropDownList2.SelectedValue = milla;
            facultysettingDropDownList3.SelectedValue = killa;
            facultysettingDropDownList4.SelectedValue = bat;
        }
    }


    protected void button1_Click(object sender, EventArgs e)
    {
        string mia = Session["facultyemail"].ToString();
        String update = "Update [Table] set Name = '" + facultysettingTextBox1.Text + "', Password = '" + facultysettingTextBox2.Text + "', Day = '" + facultysettingDropDownList1.SelectedValue +"', Month = '" + facultysettingDropDownList2.SelectedValue + "', Year = '" + facultysettingDropDownList3.SelectedValue + "', Gender = '" + facultysettingDropDownList4.SelectedValue + "' where Email_Id = '" + mia + "'";
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