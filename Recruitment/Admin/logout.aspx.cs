using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Recruitment.Admin
{
  public partial class logout : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      // Clear session variables or perform any other necessary logout operations
      Session.Clear();
      Session.Abandon();

      // Redirect the user to the login page after logout

      //string script = "setTimeout(function() { alert('Successfully Logout'); window.location.href ='../User/SignIn.aspx'; }, 100);";
      //ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);


      string script = @"$(document).ready(function() { 
                            $('#customAlert1').modal('show'); 
                            $('#btnOK1').click(function() {
                                window.location.href = '../User/SignIn.aspx';
                            });
                        });";
      ClientScript.RegisterStartupScript(this.GetType(), "customAlert1", script, true);
    }
  }
}
