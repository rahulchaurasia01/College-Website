﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Department_Computer_Department_Computerabout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageUrl();
        }
    }

    private void SetImageUrl()
    {
        if (ViewState["ImageDisplayed"] == null)
        {
            Image1.ImageUrl = "~/Department/Computer Department/computerImages/3.jpg";
            ViewState["ImageDisplayed"] = 3;
        }
        else
        {
            int i = (int)ViewState["ImageDisplayed"];
            if (i == 10)
            {
                Image1.ImageUrl = "~/Department/Computer Department/computerImages/3.jpg";
                ViewState["ImageDisplayed"] = 3;
            }
            else
            {
                i = i + 1;
                Image1.ImageUrl = "~/Department/Computer Department/computerImages/" + i.ToString() + ".jpg";
                ViewState["ImageDisplayed"] = i;
            }
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }
}