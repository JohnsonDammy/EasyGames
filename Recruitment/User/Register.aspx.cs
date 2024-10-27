using System;
using System.Web.UI;
using Dapper;
using System.Data.SqlClient;
using System.Configuration;

namespace Recruitment.User
{
    public partial class Register : System.Web.UI.Page
    {
        private readonly string connectionString = ConfigurationManager.ConnectionStrings["EasyGame"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize any dropdowns or other UI components if needed
            }
        }

        // Function to check if the email exists
        private bool EmailExists(string email)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                // Check if the email exists in the SignUp table
                var result = connection.ExecuteScalar<int>("SELECT COUNT(1) FROM SignUp WHERE EmailAddress = @EmailAddress",
                    new { EmailAddress = email });

                return result > 0;
            }
        }

        // Function to register a new user using Dapper
        public int AddRegister()
        {
            using (var connection = new SqlConnection(connectionString))
            {
                var parameters = new
                {
                    FullNames = txtFullNames.Text,
                    LastName = LastName.Text,
                    EmailAddress = txtEmail.Text,
                    Password = txtPassword.Text,
                    ConfirmPassword = txtConfirmPassword.Text,
                    RoleId = 2,  // Default role for the new user (2 = Client)
                    Method = "Manual"  // Assuming the method is hardcoded
                };

                // Call the stored procedure to register the user
                var userId = connection.ExecuteScalar<int>("spRegisterUser", parameters, commandType: System.Data.CommandType.StoredProcedure);

                return userId;  // Return the newly created UserID
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string newEmailAddress = txtEmail.Text;

            // Check if the email already exists
            if (EmailExists(newEmailAddress))
            {
                // Email exists, show modal to user
                string script = @"$(document).ready(function() { 
                            $('#EmailAlready').modal('show'); 
                            $('#btnOK2').click(function() {
                                window.location.href = 'SignIn.aspx';
                            });
                        });";
                ClientScript.RegisterStartupScript(this.GetType(), "EmailAlready", script, true);
            }
            else
            {
                // If the email doesn't exist, register the user
                int newUserId = AddRegister();  // Register the user and get the newly created UserID

                // Set session variables
                Session["UserID"] = newUserId;
                Session["UserFirstName"] = txtFullNames.Text.Split(' ')[0];  // Store the user's first name
                Session["FullName"] = txtFullNames.Text;
                Session["Email"] = txtEmail.Text;

                // Show success modal and redirect the user to the review page
                string script = @"$(document).ready(function() { 
                            $('#customAlert1N').modal('show'); 
                            $('#btnOK1').click(function() {
                                window.location.href = 'MyProfile.aspx';
                            });
                        });";
                ClientScript.RegisterStartupScript(this.GetType(), "customAlert1N", script, true);
            }
        }
    }
}
