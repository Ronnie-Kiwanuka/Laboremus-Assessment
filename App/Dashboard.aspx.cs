using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    DataLogic dd = new DataLogic();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        string[] searchparams = {fromDate.Text, toDate.Text };
        DataSet ds = dd.ExecuteDataset("GetRangeSales", searchparams);
        GridView1.Visible = true;
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

        DataTable dt = ds.Tables[1];
        string profit = dt.Rows[0][0].ToString();
        Label1.Text = "Total Profit: " + profit;


    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //Loadsales();
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}