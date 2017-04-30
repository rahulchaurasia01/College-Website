using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Login_Faculty_Defaultert : System.Web.UI.Page
{

    string gom = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Defaulter.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string jod = Session["defaulteremail"].ToString();
        if (defaulterFileUpload1.HasFile && DefaulterDropDownList1.SelectedIndex != -1 && DefaulterDropDownList2.SelectedIndex != -1 )
        {
            FileInfo fi = new FileInfo(defaulterFileUpload1.FileName);
            byte[] documentContent = defaulterFileUpload1.FileBytes;
            Session["document"] = documentContent;
            string name = fi.Name;
            using (SqlConnection cn = new SqlConnection(gom))
            {
                SqlCommand cmd = new SqlCommand("defSaveDocument", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = jod;
                cmd.Parameters.Add("@filename", SqlDbType.VarChar).Value = name;
                cmd.Parameters.Add("@content", SqlDbType.VarBinary).Value = documentContent;
                cmd.Parameters.Add("@department", SqlDbType.VarChar).Value = DefaulterDropDownList1.SelectedValue;
                cmd.Parameters.Add("@class", SqlDbType.VarChar).Value = DefaulterDropDownList2.SelectedValue;
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }

            Label2.ForeColor = System.Drawing.Color.Green;
            Label2.Text = "Your File has Been SuccessFully Saved";
            DefaulterDropDownList1.SelectedValue = "-1";
            DefaulterDropDownList2.SelectedValue = "-1";
        }
        else
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "Please All The Details";
        }
    }
}