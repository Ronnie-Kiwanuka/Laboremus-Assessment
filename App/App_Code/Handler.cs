using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for Handler
/// </summary>
public class Handler
{
    DataLogic dd = new DataLogic();
    SystemUser user = new SystemUser();

    public Handler()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string Hash(string input)
    {
        // Use input string to calculate MD5 hash
        using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
        {
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
            byte[] hashBytes = md5.ComputeHash(inputBytes);

            // Convert the byte array to hexadecimal string
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hashBytes.Length; i++)
            {
                sb.Append(hashBytes[i].ToString("X2"));
            }
            return sb.ToString();
        }
    }
    public SystemUser GetUserById(string username)
    {
        string[] param = { username };
        try
        {
            DataTable dt = new DataTable();
            dt = dd.ExecuteDataset("GetUserById", param).Tables[0]; ;
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    user.FirstName = row["Fname"].ToString();
                    user.LastName = row["Lname"].ToString();
                    user.Password = row["Password"].ToString();
                    user.Company = row["Company"].ToString();
                    user.Role = row["Role"].ToString();
                    user.UserId = row["Username"].ToString();
                    user.Email = row["Email"].ToString();
                    user.LoginCount = row["InvalidLoginCount"].ToString();
                    //user.PathToProfilePlan = row["PathToProfilePic"].ToString();
                    string active = row["Active"].ToString();
                    string login = row["LoggedIn"].ToString();
                    user.Active = bool.Parse(active);
                    user.LoggedIn = bool.Parse(login);
                    user.StatusCode = "0";
                    user.StatusDescription = "SUCCESS";
                }
            }
            else
            {
                user.StatusCode = "100";
                user.StatusDescription = "USER ID IS WRONG OR DOES NOT EXIST ";
            }
        }
        catch (Exception ex)
        {
            dd.LogError("GetUserById", ex.Message);
            user.StatusCode = "100";
            user.StatusDescription = ex.Message;
        }
        return user;
    }

    public string GetUsertypeName(string usertypecode)
    {
        DataTable dt = new DataTable();
        string UserTypeName = "";
        try
        {
            string[] param = { usertypecode };
            dt = dd.ExecuteDataset("GetUsertypeByCode", param).Tables[0];
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    UserTypeName = row["RoleName"].ToString();
                }
            }
        }
        catch (Exception ex)
        {
            dd.LogError("GetUsertypeName", ex.Message);
        }
        return UserTypeName;
    }

}
