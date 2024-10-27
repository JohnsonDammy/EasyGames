using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Dapper;
using System.Configuration;



namespace Recruitment.User
{

    public partial class SignIn : System.Web.UI.Page
    {
        private readonly string connectionString = ConfigurationManager.ConnectionStrings["EasyGame"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

   

        public void NationalityDropdown()
        {

        }

   

        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;

            using (var connection = new SqlConnection(connectionString))
            {
                var user = connection.QuerySingleOrDefault<dynamic>(
                    "Select *from SignUp Where EmailAddress = @EmailAddress",
                    new { EmailAddress = email }
                    );

                if (user != null)
                {
                    if (user.Password == password)
                    {
                        Session["RegularUser"] = true;

                        if (user.RoleId == 1)//Admin
                        {
                            Session["AdminID"] = user.RoleId;

                            string script = @"$(document).ready(function() { 
                            $('#customAlert').modal('show'); 
                            $('#btnOK').click(function() {
                                window.location.href = '../Admin/index.aspx';  // Redirect to admin dashboard
                            });
                        });";

                            ClientScript.RegisterStartupScript(this.GetType(), "customAlert", script, true);

                        }
                        else if (user.RoleId == 2) // Regular User
                        {
                            Session["UserID"] = user.Id;
                            Session["UserFirstName"] = user.FullNames.Split(' ')[0];
                            Session["FullName"] = user.FullNames;

                            string script = @"$(document).ready(function() { 
                            $('#customAlert1').modal('show'); 
                            $('#btnOK1').click(function() {
                                window.location.href = 'MyProfile.aspx';  // Redirect to user profile page
                            });
                        });";
                            ClientScript.RegisterStartupScript(this.GetType(), "customAlert1", script, true);


                        }


                    }
                    else
                    {
                        // Password is incorrect, show the "Invalid Email or Password" modal
                        string script = @"$(document).ready(function() { 
                            $('#fail').modal('show'); 
                            $('#btnOKFail').click(function() {
                                window.location.href = 'SignIn.aspx';  // Redirect back to login
                            });
                        });";
                        ClientScript.RegisterStartupScript(this.GetType(), "fail", script, true);
                    }
                }
            }
        }
    }
         
        
    

}