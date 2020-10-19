<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>

  <title>Login</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/>

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet"/>
</head>
<body class="bg-gradient-primary">
    <%--<form id="form1" runat="server">--%>
        <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-5 col-lg- col-md-5">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <%--<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>--%>
              <div class="col-lg-12">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                      <asp:Label  ID="Label1" runat="server" ForeColor="Red" />
                  </div>
                  <form class="user" runat="server">
                    <div class="form-group">
                      <asp:Textbox  class="form-control form-control-user" placeholder="Enter Email Address..." ID="txtUsername" runat="server" TextMode="Email" aria-describedby="emailHelp"/>
                    </div>
                    <div class="form-group">
                      <asp:Textbox  class="form-control form-control-user" placeholder="Password" ID="txtPassword" runat="server" TextMode="Password"/>
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <label>
                            <asp:CheckBox ID="checkbox1" runat="server" class="custom-control-input" Text="Remember Me" />
                        </label>
                      </div>
                    </div>
                        <asp:Button ID="login_btn" class="btn btn-primary btn-user btn-block" runat="server" Text="Login" OnClick="login_btn_Click" />
                    <%--<hr/>--%>
                  </form>
                  <%--<hr/>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.html">Create an Account!</a>
                  </div>--%>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>
    <%--</form>--%>
</body>
</html>
