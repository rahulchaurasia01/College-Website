using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Login_Faculty_Questionbank : System.Web.UI.Page
{

    string gom = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Questionbank.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string jod = Session["defaulteremail"].ToString();
        if (questionbankFileUpload1.HasFile && questionbankDropDownList1.SelectedIndex != -1 && questionbankDropDownList2.SelectedIndex != -1)
        {
            FileInfo fi = new FileInfo(questionbankFileUpload1.FileName);
            byte[] documentContent = questionbankFileUpload1.FileBytes;
            Session["document"] = documentContent;
            string name = fi.Name;
            using (SqlConnection cn = new SqlConnection(gom))
            {
                SqlCommand cmd = new SqlCommand("questSaveDocument", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = jod;
                cmd.Parameters.Add("@filename", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@content", SqlDbType.VarBinary).Value = documentContent;
                cmd.Parameters.Add("@department", SqlDbType.VarChar).Value = questionbankDropDownList1.SelectedValue;
                cmd.Parameters.Add("@class", SqlDbType.VarChar).Value = questionbankDropDownList2.SelectedValue;
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            Label2.ForeColor = System.Drawing.Color.Green;
            Label2.Text = "Your File has Been SuccessFully Saved";
            questionbankDropDownList1.SelectedValue = "-1";
            questionbankDropDownList2.SelectedValue = "-1";
        }
        else
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "Please fill all the details";
        }
    }

}