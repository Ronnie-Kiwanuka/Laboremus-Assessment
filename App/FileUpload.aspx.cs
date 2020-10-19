using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FileUpload : System.Web.UI.Page
{
    string message = "";
    DataLogic dd = new DataLogic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            styling1.Visible = false;
            styling2.Visible = false;
        }
        else
        {
            MultiView1.ActiveViewIndex = 0;
            styling1.Visible = false;
            styling2.Visible = false;
        }
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        //First validate the file uploaded by the user
        if (String.IsNullOrEmpty(file.FileName))
        {
            message = "Please upload a file";
            DisplayFeedback(false,message);
        }
        else if (!(Path.GetExtension(file.FileName).Equals(".csv")))
        {
            message = "Please upload a csv file";
            DisplayFeedback(false, message);
        }
        else
        {
            ProcessFile();
        }
    }
    public void ProcessFile()
    {
        try
        {
            DataTable tblcsv = new DataTable();
            //creating columns  
            tblcsv.Columns.Add("Region");
            tblcsv.Columns.Add("Country");
            tblcsv.Columns.Add("ItemType");
            tblcsv.Columns.Add("SalesChannel");
            tblcsv.Columns.Add("OrderPriority");
            tblcsv.Columns.Add("OrderDate");
            tblcsv.Columns.Add("OrderId");
            tblcsv.Columns.Add("ShipDate");
            tblcsv.Columns.Add("UnitsSold");
            tblcsv.Columns.Add("UnitPrice");
            tblcsv.Columns.Add("UnitCost");
            tblcsv.Columns.Add("TotalRevenue");
            tblcsv.Columns.Add("TotalCost");
            tblcsv.Columns.Add("TotalProfit");
            tblcsv.AcceptChanges();

            string csvPath = Server.MapPath("~/Files/") + Path.GetFileName(file.PostedFile.FileName);
            file.SaveAs(csvPath);

            //Read the contents of CSV file.  
            string[] sales = File.ReadAllLines(csvPath);
            foreach(string line in sales)
            {
                string[] values = line.Split(new string[] { "," }, StringSplitOptions.None);
                string Region = values[0];
                string country = values[1];
                string itemType = values[2];
                string salesChannel = values[3];
                string orderPriority = values[4];
                string orderDate = values[5];
                string orderId = values[6];
                string shipDate = values[7];
                string unitsSold = values[8];
                string unitPrice = values[9];
                string unitCost = values[10];
                string totalRevenue = values[11];
                string totalCost = values[12];
                string totalProfit = values[13];

                if (Region.Equals("Region"))
                {
                    continue;
                }

                string[] param = { Region, country, itemType, salesChannel, orderPriority, orderDate, orderId, shipDate, unitsSold, unitPrice, unitCost, totalRevenue, totalCost, totalProfit };
                dd.ExecuteNonquery("SaveTransaction", param);

                tblcsv.Rows.Add(Region);
                tblcsv.Rows.Add(country);
                tblcsv.Rows.Add(itemType);
                tblcsv.Rows.Add(salesChannel);
                tblcsv.Rows.Add(orderPriority);
                tblcsv.Rows.Add(orderDate);
                tblcsv.Rows.Add(orderId);
                tblcsv.Rows.Add(shipDate);
                tblcsv.Rows.Add(unitsSold);
                tblcsv.Rows.Add(unitPrice);
                tblcsv.Rows.Add(unitCost);
                tblcsv.Rows.Add(totalRevenue);
                tblcsv.Rows.Add(totalCost);
                tblcsv.Rows.Add(totalProfit);
                tblcsv.AcceptChanges();

                GridView1.Visible = true;
                GridView1.DataSource = tblcsv;
                GridView1.DataBind();
                MultiView1.ActiveViewIndex = 1;
                message = "File has been uploaded successfully";
                DisplayFeedback(true, message);
            }
        }
        catch(Exception ee)
        {
            message = "Please upload a csv file";
            DisplayFeedback(false, message);
        }
        
    }
    public void DisplayFeedback(bool error, string message)
    {
        if (error)
        {
            feedback.Visible = true;
            styling1.Visible = true;
            output1.Text = "SUCCESS: "+message.ToUpper();
        }
        else
        {
            feedback.Visible = true;
            styling2.Visible = true;
            output2.Text = "FAILED: " + message.ToUpper();
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}