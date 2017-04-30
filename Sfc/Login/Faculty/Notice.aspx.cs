using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login_Faculty_Notice : System.Web.UI.Page
{

     string gods = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Notice.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string jod = Session["defaulteremail"].ToString();
        if (noticeFileUpload1.HasFile)
        {
            FileInfo fi = new FileInfo(noticeFileUpload1.FileName);
            byte[] documentContent = noticeFileUpload1.FileBytes;
            string name = fi.Name;
            using (SqlConnection cn = new SqlConnection(gods))
            {
                SqlCommand cmd = new SqlCommand("saveDocument", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = jod;
                cmd.Parameters.Add("@filename", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@content", SqlDbType.VarBinary).Value = documentContent;
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();

            }
            Label2.ForeColor = System.Drawing.Color.Green;
            Label2.Text = "Your File has Been SuccessFully Saved";
        }
        else
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "Please select the file";
        }
    }
}
