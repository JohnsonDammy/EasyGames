using System;
using System.Data.SqlClient;
using Dapper;
using System.Linq;

using System.Configuration;
using System.Web.UI.WebControls;  // Import the required namespace for GridView events

namespace Recruitment.User
{
    public partial class MyProfile : System.Web.UI.Page
    {
        // Define the connection string
        private readonly string connectionString = ConfigurationManager.ConnectionStrings["EasyGame"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load transactions only if the page is loaded for the first time
                LoadBalance();
                LoadTransactions();
            }
        }

        // Load balance for the client
        private void LoadBalance()
        {
            if (Session["UserID"] == null)
            {
                string script = "setTimeout(function() { alert('Please Login'); window.location.href ='Register.aspx'; }, 100);";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                return;
            }

            int clientId = (int)Session["UserID"];

            using (var connection = new SqlConnection(connectionString))
            {
                // Fetch the balance for the client
                var balance = connection.QuerySingleOrDefault<decimal>("SELECT Balance FROM Client WHERE ClientID = @ClientID", new { ClientID = clientId });

                // Display the balance in the label
                lblBalance.Text = $"Balance: {balance:C}";  // Format as currency
            }
        }

        // Load transactions for the client
        private void LoadTransactions()
        {
            if (Session["UserID"] == null)
            {
                string script = "setTimeout(function() { alert('Please Login'); window.location.href ='Register.aspx'; }, 100);";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                return;
            }

            int clientId = (int)Session["UserID"];

            using (var connection = new SqlConnection(connectionString))
            {
                // Use the Transaction class for the result
                var transactions = connection.Query<Transaction>("spGetTransactions",
                                                                 new { ClientID = clientId },
                                                                 commandType: System.Data.CommandType.StoredProcedure).ToList();

                // Output the count of transactions retrieved
                int transactionCount = transactions.Count;
        

                if (transactionCount > 0)
                {
                    gvTransactions.DataSource = transactions;
                    gvTransactions.DataBind();
                }
                else
                {
             
                }
            }
        }





        // Add a new transaction
protected void btnAddTransaction_Click(object sender, EventArgs e)
{
    // Get the ClientID from the session
    int clientId = (int)Session["UserID"];
    int transactionType = int.Parse(ddlTransactionType.SelectedValue);
    decimal amount = decimal.Parse(txtAmount.Text);
    string comment = txtComment.Text;

            // Determine if it's a credit or debit
            string transactionTypeStr;
            if (transactionType == 1)
            {
                transactionTypeStr = "Debit"; // Assign "Credit" for transactionType 1
            }
            else
            {
                transactionTypeStr = "Credit";  // Assign "Debit" for any other transactionType
            }


            using (var connection = new SqlConnection(connectionString))
    {
        try
        {
            // Get the Username
            var user = connection.QuerySingleOrDefault<dynamic>(
                "SELECT * FROM SignUp WHERE Id = @Id",
                new { Id = clientId }
            );

            // Call the stored procedure to insert or update the client
            connection.Execute("spInsertOrUpdateClient", new
            {
                ClientID = clientId,
                ClientName = user.FullNames,  // Fetching the client's name
                Amount = amount,              // The amount to be added/initial balance if inserting
                TransactionType = transactionTypeStr  // Pass 'Credit' or 'Debit'
            }, commandType: System.Data.CommandType.StoredProcedure);

            // Insert the transaction record
            connection.Execute("spAddTransaction", new
            {
                ClientID = clientId,
                TransactionTypeID = transactionType,  // Pass the transaction type ID
                Amount = amount,
                Comment = comment
            }, commandType: System.Data.CommandType.StoredProcedure);

            // Reload the transactions after adding a new transaction
            LoadTransactions();
                    // JavaScript to show the modal
                    string script = @"$(document).ready(function() { 
                $('#customAlert').modal('show'); 
                $('#btnOK').click(function() {
                    window.location.href = 'MyProfile.aspx';
                });
            });";
                    ClientScript.RegisterStartupScript(this.GetType(), "customAlert", script, true);

                }
        catch (Exception ex)
        {
            // Log the error or display a message to the user
            // For example: 
            // lblErrorMessage.Text = "An error occurred: " + ex.Message;
            // This assumes you have a label on your form to show errors
        }
    }
}


        // Row editing event for the GridView (optional)
        protected void gvTransactions_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvTransactions.EditIndex = e.NewEditIndex;
            LoadTransactions();  // Rebind data to show the row in edit mode
        }

        // Row updating event for the GridView (optional)
        protected void gvTransactions_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int transactionId = (int)gvTransactions.DataKeys[e.RowIndex].Value;
            string newComment = (gvTransactions.Rows[e.RowIndex].FindControl("txtComment") as TextBox).Text;

            using (var connection = new SqlConnection(connectionString))
            {
                connection.Execute("spUpdateTransaction", new { TransactionID = transactionId, Comment = newComment }, commandType: System.Data.CommandType.StoredProcedure);
            }

            gvTransactions.EditIndex = -1;  // Exit edit mode
            LoadTransactions();
        }

        // Row deleting event for the GridView (optional)
        protected void gvTransactions_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int transactionId = (int)gvTransactions.DataKeys[e.RowIndex].Value;

            using (var connection = new SqlConnection(connectionString))
            {
                connection.Execute("spDeleteTransaction", new { TransactionID = transactionId }, commandType: System.Data.CommandType.StoredProcedure);
            }

            LoadTransactions();  // Reload transactions after deleting
        }
    }
}
