<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Applicants.aspx.cs" Inherits="Recruitment.Admin.Applicants" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center>
        <h2>Applicant Profile</h2>
    </center>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
<%--                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>--%>
                <div class="col-12">
                    <div class="card">
                        <!-- /.card-header -->
                        <div class="card-header">
                                                 <div class="row">
    <div class="col-md-6">
        <asp:TextBox ID="txtSearch" ClientIDMode="Static" CssClass="form-control" placeholder="Search here" runat="server"></asp:TextBox>
    </div>
    <div class="col-md-2">
        <asp:Button ID="btnSearch" CssClass="btn btn-primary" runat="server" Text="Search" OnClick="btnSearch_Click" />
    </div>
</div>

<%--                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>--%>
                        </div>
                             <div class="card-body">
                                                     <asp:GridView ID="GridView1"  class="table table-bordered table-striped" AutoGenerateColumns="false" OnRowDataBound="GridView1_RowDataBound" runat="server" >
                                                       <Columns>
                                                                                       <asp:BoundField DataField="personalDetailID" HeaderText="ID" />
                                    <asp:BoundField DataField="fullname" HeaderText="Full Name" ItemStyle-CssClass="user-fullname" />

                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                    <asp:BoundField DataField="Contact" HeaderText="Contact Number" />
                                    <asp:BoundField DataField="locations" HeaderText="Location" />

                                                                                   <asp:TemplateField HeaderText="Action">
  <ItemTemplate>
                                                  <span style="display:none" class="user-fullname" data-user-id='<%# Eval("personalDetailID") %>'><%# Eval("fullname") %></span>

<%--    <button type="button" class="btn btn-info btn-lg edit-button" data-id='<%# Eval("personalDetailID") %>' data-fullname='<%# Eval("fullname") %>' data-email='<%# Eval("Email") %>' data-Contact='<%# Eval("Contact") %>' data-JobTitle='<%# Eval("JobTitles") %>' data-Location="<%# Eval("locations") %>"" data-toggle="modal">View</button>--%>
  <a href='<%# "ViewApplicant.aspx?PId=" + Eval("personalDetailID") %>'  class="btn btn-info btn-lg">View Full Profile</a>
            </ItemTemplate>
                                                                                     
</asp:TemplateField>
                                                       </Columns>
                                                     </asp:GridView>

                              </div>
                      </div>
                  </div>
              </div>
          </div>
      </section>
   
  <!-- Editing Modal -->
  <div class="modal fade"id="editModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Edit User</h4>
        </div>
        <div class="modal-body">

              <div class="card-body">
            <div class="row mb-3">
                <div class="col-sm-3">
                   <h6 class="mb-0">Full Name</h6>
                    </div>
                   <div class="col-sm-9 text-secondary">
                               <asp:TextBox ID="TextBox1" CssClass="form-control"  runat="server" ClientIDMode="Static"></asp:TextBox>

                       </div>
                     </div>

                  <div class="row mb-3">
                <div class="col-sm-3">
                   <h6 class="mb-0">Email</h6>
                    </div>
                   <div class="col-sm-9 text-secondary">
                               <asp:TextBox ID="TextBox2" CssClass="form-control"  runat="server" ClientIDMode="Static"></asp:TextBox>

                       </div>
                     </div>

                   <div class="row mb-3">
                <div class="col-sm-3">
                   <h6 class="mb-0">Password</h6>
                    </div>
                   <div class="col-sm-9 text-secondary">
                               <asp:TextBox ID="TextBox3" CssClass="form-control"  runat="server" ClientIDMode="Static"></asp:TextBox>

                       </div>
                     </div>

                    <div class="row mb-3">
                <div class="col-sm-3">
                   <h6 class="mb-0">Roles</h6>
                    </div>
                   <div class="col-sm-9 text-secondary">
      <asp:DropDownList ID="ddlRole" runat="server" CssClass="form-control w-100"  DataTextField="ddlRole" DataValueField="ddlRole"  AppendDataBoundItems="true" AutoPostBack="true" >
                                            <asp:ListItem id="Roles"></asp:ListItem>
                                        

                                        </asp:DropDownList>     
                       </div>
                     </div>
                </div>

        </div>
        
        <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal">Update</button>

          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

  <!-- Delete Modal -->
   <div class="modal fade"id="deleteModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Delete User</h4>
        </div>
        <div class="modal-body">
          <p id="UserName"></p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" >Delete User</button>
                    <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>

        </div>
      </div>
      
    </div>
  </div>
  

    <!-- Include your JavaScript here -->
   <!-- Include your JavaScript here -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
  $(document).ready(function () {
    // Attach click event to edit buttons
    $('.edit-button').click(function () {
      var userId = $(this).attr('data-id');
      var fullName = $(this).attr('data-fullname');
      var email = $(this).attr('data-email');
      var password = $(this).attr('data-password');
      var role = $(this).attr('data-role');



      showEditModal(userId, fullName, email, password, role); // Call the function with both userId and fullName
      return false; // Prevent default anchor behavior
    });

    // Attach click event to delete buttons
    $('.delete-button').click(function () {
      var userId = $(this).attr('data-id');
      var fullname = $(this).attr('data-fullname');
      $('#deleteModal').modal('show');

      deleUserModel(userId, fullname);
      // Add logic to confirm and delete user data using AJAX or other methods
      return false; // Prevent default anchor behavior
    });
  });

  // Define the function outside the $(document).ready scope
  function showEditModal(userId, fullName, email, password, role) {
    // $("#editModal .modal-title").text("Edit User: " + fullName);
    // Set the textbox value
    $("#TextBox1").val(fullName);
    $("#TextBox2").val(email);
    $("#TextBox3").val(password);
    $("#Roles").text(role)


    $('#editModal').modal('show');
  }

  function deleUserModel(userId, fullname) {
    $("#UserName").text(fullname);
  }
</script>
</asp:Content>
