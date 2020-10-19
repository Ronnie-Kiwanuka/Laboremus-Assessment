using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;
using System.Data.Common;

/// <summary>
/// Summary description for DataLogic
/// </summary>
public class DataLogic
{
    public Database salesDb;
    public DbCommand command;
    public string connectionString = "DBConnectionString";

    public DataLogic()
    {
        salesDb = DatabaseFactory.CreateDatabase(connectionString);
    }

    public DataSet ExecuteDataset(string StoredProcedure, string[] parameters)
    {
        try
        {
            command = salesDb.GetStoredProcCommand(StoredProcedure, parameters);
            DataSet ds = salesDb.ExecuteDataSet(command);
            return ds;
        }
        catch(Exception ee)
        {
            throw ee;
        }
    }

    public DataSet ExecuteDataset(string StoredProcedure)
    {
        try
        {
            command = salesDb.GetStoredProcCommand(StoredProcedure);
            DataSet ds = salesDb.ExecuteDataSet(command);
            return ds;
        }
        catch (Exception ee)
        {
            throw ee;
        }
    }

    public int ExecuteNonquery(string StoredProcedure, string[] parameters)
    {
        try
        {
            command = salesDb.GetStoredProcCommand(StoredProcedure, parameters);
            int receipt = salesDb.ExecuteNonQuery(command);
            return receipt;
        }
        catch (Exception ee)
        {
            throw ee;
        }
    }

    public int ExecuteNonquery(string StoredProcedure)
    {
        try
        {
            command = salesDb.GetStoredProcCommand(StoredProcedure);
            int receipt = salesDb.ExecuteNonQuery(command);
            return receipt;
        }
        catch (Exception ee)
        {
            throw ee;
        }
    }
    public void LogError(string method, string error)
    {
        try
        {
            command = salesDb.GetStoredProcCommand("LogError", "method","error");
            int receipt = salesDb.ExecuteNonQuery(command);
        }
        catch (Exception ex)
        {
            //throw ex;
        }
    }
}