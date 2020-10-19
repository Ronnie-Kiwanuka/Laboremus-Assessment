<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="FileUpload.aspx.cs" Inherits="FileUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Upload file</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Color System -->
              <div class="row" Runat="Server" id="feedback" visible="false">
                <div class="col-lg-12 mb-10">
                  <div class="card bg-success text-white shadow" Runat="Server" id="styling1" visible="false">
                    <div class="card-body">
                      <div class="text-white-50 small">
                         <asp:Label ID="output1" runat="server"></asp:Label></div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-12 mb-10">
                  <div class="card bg-danger text-white shadow" Runat="Server" id="styling2" visible="false">
                    <div class="card-body">
                      <asp:Label ID="output2" runat="server"></asp:Label></div>
                    </div>
                  </div>
                </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
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
                  Upload Sales File
                </div>
                <div class="card-body">
                  <asp:fileupload id="file" runat="server"></asp:fileupload>
                  <asp:button id="btnlogin" class="btn btn-primary" OnClick="btnlogin_Click" runat="server" text="Save"/>
                </div>
              </div>

            </div>

          </div>

        </div>
        <!-- /.container-fluid -->
        </asp:View>
        <asp:View ID="View2" runat="server">
            <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">File Upload</h1>
          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Uploaded Sales</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                  <asp:GridView ID="GridView1" runat="server"  class="table table-bordered"
                AutoGenerateColumns="True"
                emptydatatext="No Records Found." 
                allowpaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                <Columns>
                </Columns>
               </asp:GridView>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->
        </asp:View>
    </asp:MultiView>
    <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>
</asp:Content>

