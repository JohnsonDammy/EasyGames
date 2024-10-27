<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Recruitment.Admin._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

      <center>
        <h2>User Information</h2>
    </center>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <!-- /.card-header -->
                        <div class="card-header">
                            <h3 class="card-title" style="float: right;"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-overlay">
                                    Add Users
                                </button></h3>
                        </div>
                        <div class="card-body">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-bordered table-striped" OnRowDataBound="GridView1_RowDataBound">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="ID" />

                                    <asp:BoundField DataField="fullname" HeaderText="Full Name" ItemStyle-CssClass="user-fullname" />

                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                    <asp:BoundField DataField="password" HeaderText="Password" />
                                    <asp:BoundField DataField="RoleName" HeaderText="RoleName" />



                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <%--  <asp:HyperLink ID="EditLink" runat="server" CssClass="fa fa-edit" ForeColor="Green" Text="Edit" ToolTip="Edit Users"></asp:HyperLink>
                                            <a href='<%# "DeletePage.aspx?Id=" + Eval("Id") %>' data-target="#myModal" class="fa fa-trash" style="color: red" title="Delete Users">Delete</a>--%>
                                            <%--                                                                <span style="display:none" class="user-fullname" data-user-id='<%# Eval("Id") %>'><%# Eval("fullname") %></span>

                                            <button type="button" class="btn btn-info btn-lg" onclick="openEditModal('<%# Eval("Id") %>')">Edit</button>--%>

                                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal<%# Eval("Id") %>">Edit</button>
                                            <button type="button" class="btn btn-info btn-lg" style="background-color:red;" data-toggle="modal" data-target="#myModalD<%# Eval("Id") %>">Delete</button>



                                            <!-- Modal -->
                                            <div class="modal fade" id="myModal<%# Eval("Id") %>" role="dialog">
                                                <div class="modal-dialog">
                                                    <!-- Modal content -->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                            <h4 class="modal-title">User Data</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <!-- User information will be populated here -->
                                                            <%--              <p>('<%# Eval("Id") %>')</p>--%>

                                                            <div class="card-body">

                                                                <div class="row mb-3">

                                                                    <div class="col-sm-3">
                                                                        <h6 class="mb-0">Full Name*</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Eval("fullname") %>'></asp:TextBox>

                                                                    </div>
                                                                </div>
                                                                <div class="row mb-3">

                                                                    <div class="col-sm-3">
                                                                        <h6 class="mb-0">Email*</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter Email" Text='<%# Eval("Email") %>'></asp:TextBox>
                                                                    </div>
                                                                </div>

                                                                <div class="row mb-3">

                                                                    <div class="col-sm-3">
                                                                        <h6 class="mb-0">Password*</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Enter Email" Text='<%# Eval("password") %>'></asp:TextBox>
                                                                    </div>
                                                                </div>



                                                               <div class="row mb-3">

                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Roles*</h6>
                                    </div>
                                               <div class="col-sm-9 text-secondary">
                                                 <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>   

                                    </div>
                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-success">Save</button>

                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                          <!-- Modal -->
  <div class="modal fade" id="myModalD<%# Eval("Id") %>" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Delete User</h4>
        </div>
        <div class="modal-body">
          <p>Delete User.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

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


    <!-- /.content -->

    </div>
</asp:Content>
