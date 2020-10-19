using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Handler hh = new Handler();
    DataLogic dd = new DataLogic();
    SystemUser user = new SystemUser();
    string Msg = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void login_btn_Click(object sender, EventArgs e)
    {
        hh.Hash("test");
        Login();
    }
    public void Login()
    {
        user = hh.GetUserById(txtUsername.Text);
        if (user.StatusCode == "0")
        {
            if (user.Active)
            {
                if (IsValidPassord(user.Password))
                {
                    if (IsValidLoginCount(user.LoginCount))
                    {
                        Msg = "SUCCESS";
                    }
                    else
                    {
                        Msg = "EXCEEDED THE MAXIMUM INVALID LOGIN COUNT. CONTACT THE SYSTEM ADMINISTRATOR TO ACTIVATE YOUR ACCOUNT";
                    }
                }
                else
                {
                    Msg = "THE PASSWORD DOESN'T MATCH. PLEASE TRY AGAIN";
                }
            }
            else
            {
                Msg = "YOUR ACCOUNT IS NOT ACTIVE. CONTACT THE SYSTEM ADMINISTRATOR TO ACTIVATE YOUR ACCOUNT";
            }
        }
        else
        {
            Msg = user.StatusDescription;
        }

        if (Msg == "SUCCESS")
        {
            AssignSession(user);
        }
        else
        {
            Label1.Text = Msg;
            Label1.Visible = true;
        }


    }
    internal bool IsValidPassord(string pass)
    {
        bool match = false;
        string encrypt = hh.Hash(txtPassword.Text);
        if ((encrypt.ToUpper() == pass.ToUpper()) || (encrypt.ToUpper().Equals(pass.ToUpper())))
        {
            match = true;
        }
        return match;
    }
    internal bool IsValidLoginCount(string count)
    {
        bool valid = false;
        int num = Int32.Parse(count);
        if (num < 5)
        {
            valid = true;
        }

        return valid;
    }
    internal void AssignSession(SystemUser suser)
    {
        Session["SYSUSER"] = suser;
        Response.Redirect("WelcomePage.aspx");
    }
}