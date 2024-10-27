using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Dapper;
using System.Configuration;


namespace Recruitment.Admin
{
  public partial class Users : System.Web.UI.Page
  {
    private readonly string connectionString = ConfigurationManager.ConnectionStrings["EasyGame"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        LoadClients();
      }
    }

    private void LoadClients()
    {
      using (var connection = new SqlConnection(connectionString))
      {
        // Change this line to fetch the data into an anonymous type
        var clients = connection.Query<ClientDto>("SELECT S.Id, S.FullNames FROM SignUp S JOIN Client C ON S.Id = C.ClientID ORDER BY S.FullNames").ToList();

        // Check the properties of the first result
        if (clients.Any())
        {
          System.Diagnostics.Debug.WriteLine($"Id: {clients[0].Id}, FullNames: {clients[0].FullNames}");
        }

        ddlClients.DataSource = clients;
        ddlClients.DataTextField = "FullNames"; // Ensure this matches the dynamic property
        ddlClients.DataValueField = "Id";
        ddlClients.DataBind();

        ddlClients.Items.Insert(0, new ListItem("-- Select Client --", "0"));
      }
    }


    protected void ddlClients_SelectedIndexChanged(object sender, EventArgs e)
    {
      int clientId = int.Parse(ddlClients.SelectedValue);
      if (clientId > 0)
      {
        LoadBalance();
        LoadTransactions(clientId);
      }
    }


    public void LoadBalance()
    {


      int clientId = int.Parse(ddlClients.SelectedValue);

      using (var connection = new SqlConnection(connectionString))
      {
        // Fetch the balance for the client
        var balance = connection.QuerySingleOrDefault<decimal>("SELECT Balance FROM Client WHERE ClientID = @ClientID", new { ClientID = clientId });

        // Display the balance in the label
        lblBalance.Text = $"Balance: {balance:C}";  // Format as currency
      }
    }

    // Load transactions for the selected client
    private void LoadTransactions(int clientId)
    {
      using (var connection = new SqlConnection(connectionString))
      {
        var transactions = connection.Query<TransactionDto>("spGetTransactions", new { ClientID = clientId }, commandType: System.Data.CommandType.StoredProcedure).ToList();
        gvTransactions.DataSource = transactions;
        gvTransactions.DataBind();
      }
    }

    // Add balance to the client
  
    // Edit the comment in the transaction (GridView edit)


    protected void gvTransactions_RowEditing(object sender, GridViewEditEventArgs e)
    {
      gvTransactions.EditIndex = e.NewEditIndex;
      LoadTransactions(int.Parse(ddlClients.SelectedValue));
    }

    protected void gvTransactions_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
      int transactionId = (int)gvTransactions.DataKeys[e.RowIndex].Value;
      string newComment = (gvTransactions.Rows[e.RowIndex].FindControl("txtComment") as TextBox).Text;

      using (var connection = new SqlConnection(connectionString))
      {
        connection.Execute("spUpdateTransactionComment", new { TransactionID = transactionId, Comment = newComment }, commandType: System.Data.CommandType.StoredProcedure);
      }

      gvTransactions.EditIndex = -1;  // Exit edit mode
      LoadTransactions(int.Parse(ddlClients.SelectedValue));
    }

  

    protected void btnAddBalance_Click1(object sender, EventArgs e)
    {


      if (int.TryParse(ddlClients.SelectedValue, out int clientId) && clientId > 0)
      {
        int clientIds = int.Parse(ddlClients.SelectedValue);
        decimal balanceToAdd = decimal.Parse(txtBalance.Text);

        using (var connection = new SqlConnection(connectionString))
        {
          connection.Execute("spAddBalance", new { ClientID = clientIds, BalanceToAdd = balanceToAdd }, commandType: System.Data.CommandType.StoredProcedure);
        }

        // Optionally, reload transactions if needed

        string script = @"$(document).ready(function() { 
                $('#customAlert').modal('show'); 
                $('#btnOK').click(function() {
                    window.location.href = 'Users.aspx';
                });
            });";
        ClientScript.RegisterStartupScript(this.GetType(), "customAlert", script, true);

        LoadTransactions(clientIds);
      }
      else
      {
        lblMessage.Text = "Please select a valid client.";

      }


   

    }

    protected void gvTransactions_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
      // Exit edit mode
      gvTransactions.EditIndex = -1;

      // Reload the transactions to refresh the GridView
      LoadTransactions(int.Parse(ddlClients.SelectedValue));
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
      if (int.TryParse(ddlClients.SelectedValue, out int clientId) && clientId > 0)
      {
        string searchTerm = txtSearch.Text.Trim();
        LoadSearchRecord(clientId, string.IsNullOrEmpty(searchTerm) ? null : searchTerm);
        lblMessage.Text = "";

      }
      else
      {
        // Optionally, display a message if no valid client is selected
        lblMessage.Text = "Please select a valid client.";
      }
    }


    // Update LoadTransactions method to include search functionality
    private void LoadSearchRecord(int clientId, string searchTerm = null)
    {
      try
      {
        using (var connection = new SqlConnection(connectionString))
        {
          var parameters = new { ClientID = clientId, SearchTerm = searchTerm };
          var transactions = connection.Query<TransactionDto>("spGetTransactionSearch", parameters, commandType: System.Data.CommandType.StoredProcedure).ToList();
          gvTransactions.DataSource = transactions;
          gvTransactions.DataBind();
        }
      }
      catch (Exception ex)
      {
        // Log the error or display a message to the user
        // e.g., lblMessage.Text = "An error occurred while loading transactions.";
        Console.WriteLine(ex.Message);
      }
    }
  }
}
