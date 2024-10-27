<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Recruitment.Admin.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <!-- Include your CSS and other head content here -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <%  if (Session["AdminID"] != null)
      { %>
  <%}
      else
      {
        string script = "setTimeout(function() { alert('Please Login'); window.location.href ='../User/SignIn.aspx'; }, 100);";
        ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
      }
  %>


  <div class="container">

    <h2>Manage Client Transactions</h2>

    <!-- Dropdown to select a client -->
    <div class="form-group">
      <label for="clientSelect">Select Client:</label>
      <asp:DropDownList ID="ddlClients" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlClients_SelectedIndexChanged" CssClass="form-control">
      </asp:DropDownList>
    </div>

    <!-- GridView to display transactions for selected client -->
    <div class="form-group">
      <h3>Transactions</h3>

      <h2>Available Balance</h2>
      <asp:Label ID="lblBalance" runat="server" CssClass="form-control" />

        <asp:Label ID="lblMessage" runat="server" style="color:red" />


      <!-- Search Functionality -->
          <div class="form-group">
              <label for="searchText">Search Transactions:</label>
              <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Enter search term..." />
              <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
          </div>

      <asp:GridView ID="gvTransactions" runat="server" AutoGenerateColumns="false" CssClass="table table-striped"
        OnRowEditing="gvTransactions_RowEditing"
        OnRowUpdating="gvTransactions_RowUpdating"
        OnRowCancelingEdit="gvTransactions_RowCancelingEdit"
        DataKeyNames="TransactionID">
        <Columns>
          <asp:BoundField DataField="TransactionDate" HeaderText="Date" />
          <asp:BoundField DataField="TransactionType" HeaderText="Type" />
          <asp:BoundField DataField="Amount" HeaderText="Amount" />

          <asp:TemplateField HeaderText="Comment">
            <ItemTemplate>
              <%# Eval("Comment") %>
            </ItemTemplate>
            <EditItemTemplate>
              <asp:TextBox ID="txtComment" runat="server" Text='<%# Bind("Comment") %>' CssClass="form-control" />
            </EditItemTemplate>
          </asp:TemplateField>

          <asp:TemplateField HeaderText="Manage">
            <ItemTemplate>
              <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-link" />
            </ItemTemplate>
            <EditItemTemplate>
              <asp:LinkButton ID="btnUpdate" runat="server" CommandName="Update" Text="Update" CssClass="btn btn-link" />
              <asp:LinkButton ID="btnCancel" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-link" />
            </EditItemTemplate>
          </asp:TemplateField>
        </Columns>
      </asp:GridView>


      <!-- Form to add balance to client -->
      <!-- Modal -->
      <div class="modal fade" id="customAlert" tabindex="-1" role="dialog" aria-labelledby="customAlertLabel">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="customAlertLabel"><i class="fas fa-check-circle"></i>Success</h5>

            </div>
            <div class="modal-body">
              Balance Added Successfully
            </div>
            <div class="modal-footer">
              <button type="button" id="btnOK" class="btn btn-primary">OK</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="form-group">




      <label for="balance">Add Balance:</label>
      <asp:TextBox ID="txtBalance" runat="server" CssClass="form-control" oninput="validateBalanceInput(this)" />
      <asp:Button ID="btnAddBalance" runat="server" Text="Add Balance" CssClass="btn btn-primary" OnClick="btnAddBalance_Click1" />
    </div>

  </div>


  <script type="text/javascript">
    function validateBalanceInput(input) {
      // Allow only numbers and commas
      input.value = input.value.replace(/[^0-9,]/g, '');
    }
</script>
</asp:Content>
