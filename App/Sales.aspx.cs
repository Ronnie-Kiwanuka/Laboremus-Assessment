using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sales : System.Web.UI.Page
{
    DataLogic dd = new DataLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {

        }
        else
        {
            Loadsales();
        }
    }

    public void Loadsales()
    {
        GridView1.Visible = true;
        GridView1.DataSource = dd.ExecuteDataset("GetAllSales").Tables[0];
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Loadsales();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}