<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Begin Page Content -->
        <div class="container-fluid">
            <div class="row">

            <div class="col-lg-12">

              <!-- Default Card Example -->
              <div class="card mb-10">
                <div class="card-body">
                  <asp:Textbox  class="form-control form-control-user"  ID="fromDate" runat="server" TextMode="DateTime"/>
                   <asp:Textbox  class="form-control form-control-user"  ID="toDate" runat="server" TextMode="DateTime"/>
                  <asp:button id="btnsearch" class="btn btn-primary" OnClick="btnsearch_Click" runat="server" text="Search"/>
                </div>
              </div>

            </div>

          </div>
          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Dashboard</h1>
          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">
                 <asp:Label ID="Label1" runat="server"></asp:Label></h6>
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

