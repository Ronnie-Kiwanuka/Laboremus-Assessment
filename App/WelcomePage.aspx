<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="WelcomePage.aspx.cs" Inherits="WelcomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Welcome Page</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <%--<div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Welcome</h1>
          </div>--%>

          <div class="row">

            <div class="col-lg-12">

              <!-- Default Card Example -->
              <div class="card mb-10">
                <div class="card-header">
                  Hello <asp:Label ID="Label1" runat="server" Text="Fname Lname"></asp:Label>
                </div>
                <div class="card-body">
                  Welcome to the web portal. PLease you the navigation links.
                </div>
              </div>

            </div>

          </div>

        </div>
        <!-- /.container-fluid -->
</asp:Content>

