using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login_Student_Student : System.Web.UI.Page
{
    string def = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Defaulter.mdf;Integrated Security=True";

    string quest = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Questionbank.mdf;Integrated Security=True";

    string marks = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Ut_Marks.mdf;Integrated Security=True";

    string mia, lucy;

    protected void Page_Load(object sender, EventArgs e)
    {
         mia = Session["studentdepartment"].ToString();
         lucy = Session["studentclass"].ToString();
        if (!IsPostBack)
        {
            filldata();
            filldata1();
            filldata2();
        }
    }

    protected void OpenDocument1(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)lnk.NamingContainer;
        int id = int.Parse(GridView1.DataKeys[gr.RowIndex].Value.ToString());
        Download1(id);
    }

    private void Download1(int id)
    {
        DataTable dt = new DataTable();
        using (SqlConnection cn = new SqlConnection(def))
        {
            SqlCommand cmd = new SqlCommand("defGetDocument", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;
            cn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);
        }
        string name = dt.Rows[0]["Name"].ToString();
        byte[] documentBytes = (byte[])dt.Rows[0]["Filedata"];
        Response.ClearContent();
        Response.ContentType = "application/octetstream";
        Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", name));
        Response.AddHeader("Content-Length", documentBytes.Length.ToString());
        Response.BinaryWrite(documentBytes);
        Response.Flush();
        Response.Close();
    }

    protected void OpenDocument2(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)lnk.NamingContainer;
        int id = int.Parse(GridView2.DataKeys[gr.RowIndex].Value.ToString());
        Download2(id);
    }

    private void Download2(int id)
    {
        DataTable dt = new DataTable();
        using (SqlConnection cn = new SqlConnection(quest))
        {
            SqlCommand cmd = new SqlCommand("questGetDocument", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;
            cn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);
        }
        string name = dt.Rows[0]["Name"].ToString();
        byte[] documentBytes = (byte[])dt.Rows[0]["Filedata"];
        Response.ClearContent();
        Response.ContentType = "application/octetstream";
        Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", name));
        Response.AddHeader("Content-Length", documentBytes.Length.ToString());
        Response.BinaryWrite(documentBytes);
        Response.Flush();
        Response.Close();
    }

    protected void OpenDocument3(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)lnk.NamingContainer;
        int id = int.Parse(GridView3.DataKeys[gr.RowIndex].Value.ToString());
        Download3(id);
    }

    private void Download3(int id)
    {
        DataTable dt = new DataTable();
        using (SqlConnection cn = new SqlConnection(marks))
        {
            SqlCommand cmd = new SqlCommand("marksGetDocument", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;
            cn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);
        }
        string name = dt.Rows[0]["Name"].ToString();
        byte[] documentBytes = (byte[])dt.Rows[0]["Filedata"];

        Response.ClearContent();
        Response.ContentType = "application/octetstream";
        Response.AddHeader("Content-Disposition", string.Format("attachment; filename={0}", name));
        Response.AddHeader("Content-Length", documentBytes.Length.ToString());
        Response.BinaryWrite(documentBytes);
        Response.Flush();
        Response.Close();
    }


    private void filldata2()
    {
        DataTable dt = new DataTable();
        string defGetDoc = "select Id, Name, Filedata from [Ut_marks] where Department = '" + mia + "' and Class = '" + lucy + "' ";
        using (SqlConnection cn = new SqlConnection(marks))
        {
            SqlCommand cmd = new SqlCommand(defGetDoc, cn);
            cn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);
        }
        if (dt.Rows.Count > 0)
        {
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }
    }

    private void filldata1()
    {
        DataTable dt = new DataTable();
        string defGetDoc = "select Id, Name, Filedata from [Questionbank] where Department = '" + mia + "' and Class = '" + lucy + "' ";
        using (SqlConnection cn = new SqlConnection(quest))
        {
            SqlCommand cmd = new SqlCommand(defGetDoc, cn);
            cn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);
        }
        if (dt.Rows.Count > 0)
        {
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }

    private void filldata()
    {
        DataTable dt = new DataTable();
        string defGetDoc = "select Id, Name, Filedata from [Defaulter] where Department = '" + mia + "' and Class = '" + lucy + "' " ; 
        using (SqlConnection cn = new SqlConnection(def))
        {
            SqlCommand cmd = new SqlCommand(defGetDoc, cn);
            cn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            dt.Load(reader);
        }
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}