using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;

public partial class Login_Faculty_Ut_Marks : System.Web.UI.Page
{

    string gom = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Ut_Marks.mdf;Integrated Security=True";

    protected void Button1_Click(object sender, EventArgs e)
    {
        string jod = Session["defaulteremail"].ToString();
        if (utmarksFileUpload1.HasFile && utmarksDropDownList1.SelectedIndex != -1 && utmarksDropDownList2.SelectedIndex != -1)
        {
            FileInfo fi = new FileInfo(utmarksFileUpload1.FileName);
            byte[] documentContent = utmarksFileUpload1.FileBytes;
            Session["document"] = documentContent;
            string name = fi.Name;

            using (SqlConnection cn = new SqlConnection(gom))
            {
                SqlCommand cmd = new SqlCommand("marksSaveDocument", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = jod;
                cmd.Parameters.Add("@filename", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@content", SqlDbType.VarBinary).Value = documentContent;
                cmd.Parameters.Add("@department", SqlDbType.VarChar).Value = utmarksDropDownList1.SelectedValue;
                cmd.Parameters.Add("@class", SqlDbType.VarChar).Value = utmarksDropDownList2.SelectedValue;
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }

            Label2.ForeColor = System.Drawing.Color.Green;
            Label2.Text = "Your File has Been SuccessFully Saved";
            utmarksDropDownList1.SelectedValue = "-1";
            utmarksDropDownList2.SelectedValue = "-1";
        }
        else
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "Please select all the file";
        }
    }
}