using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SystemUser
/// </summary>
public class SystemUser
{
    private string firstName, lastName, userId, email, password, company,phone,role,
              loginCount, pathToProfilePic, statusCode, statusDescription;
    private bool active, loggedin;

    public string StatusCode
    {
        get { return statusCode; }
        set { statusCode = value; }
    }
    public string StatusDescription
    {
        get { return statusDescription; }
        set { statusDescription = value; }
    }
    public string FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }
    public string LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }
    public string Role
    {
        get { return role; }
        set { role = value; }
    }
    public string Company
    {
        get { return company; }
        set { company = value; }
    }
    public string Telephone
    {
        get { return phone; }
        set { phone = value; }
    }
    public string UserId
    {
        get { return userId; }
        set { userId = value; }
    }
    public string Email
    {
        get { return email; }
        set { email = value; }
    }
    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    public bool Active
    {
        get { return active; }
        set { active = value; }
    }
    public bool LoggedIn
    {
        get { return loggedin; }
        set { loggedin = value; }
    }
    public string LoginCount
    {
        get { return loginCount; }
        set { loginCount = value; }
    }
    public string PathToProfilePlan
    {
        get { return pathToProfilePic; }
        set { pathToProfilePic = value; }
    }
}