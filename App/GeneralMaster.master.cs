using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GeneralMaster : System.Web.UI.MasterPage
{
    SystemUser user = new SystemUser();
    Handler hh = new Handler();

    protected void Page_Load(object sender, EventArgs e)
    {
        user = Session["SYSUSER"] as SystemUser;
        if (user == null)
        {
            Response.Redirect("Default.aspx");
        }
        LoadData();
    }

    internal void LoadData()
    {
        string rolename = hh.GetUsertypeName(user.Role);
        string role = "Role: " + rolename;
        string name = user.FirstName + " " + user.LastName;
        Label3.Text = role;
        Label2.Text = name;

    }
}
