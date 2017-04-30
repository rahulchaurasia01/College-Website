using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    string mia = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Notice.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SetImageUrl();
            filldata();
        }
    }

    protected void OpenDocument(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)lnk.NamingContainer;
        int id = int.Parse(GridView2.DataKeys[gr.RowIndex].Value.ToString());
        Download(id);
    }

    private void Download(int id)
    {
        DataTable dt = new DataTable();
        using (SqlConnection cn = new SqlConnection(mia))
        {
            SqlCommand cmd = new SqlCommand("getDocument", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;
            cn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);
        }
        string name = dt.Rows[0]["Filename"].ToString();
        byte[] documentBytes = (byte[])dt.Rows[0]["Filedata"];
        Response.ClearContent();
        Response.ContentType = "application/octetstream";
        Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", name));
        Response.AddHeader("Content-Length", documentBytes.Length.ToString());
        Response.BinaryWrite(documentBytes);
        Response.Flush();
        Response.Close();
    }

    private void filldata()
    {
        DataTable dt = new DataTable();
        using (SqlConnection cn = new SqlConnection(mia))
        {
            SqlCommand cmd = new SqlCommand("getDocuments", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);
        }
        if(dt.Rows.Count>0)
        {
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }

    private void SetImageUrl()
    {
        if(ViewState["ImageDisplayed"] == null)
        {
            Image1.ImageUrl = "~/Images/4.jpg";
            ViewState["ImageDisplayed"] = 4;
        }
        else
        {
            int i = (int)ViewState["ImageDisplayed"];
            if (i == 8)
            {
                Image1.ImageUrl = "~/Images/4.jpg";
                ViewState["ImageDisplayed"] = 4;
            }
            else
            {
                i = i + 1;
                Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
                ViewState["ImageDisplayed"] = i;
            }
        }
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}