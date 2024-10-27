using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Recruitment.Admin
{
  public partial class FetchUserData : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      // Retrieve user data based on the provided userId
      string userId = Request.QueryString["userId"];

      // Implement the logic to fetch user data from the server/database
      // For example, using the RecriutmentEntities model, similar to what you've done before
      // Replace this with actual data retrieval logic
      var userData = GetUserById(userId);

      // Return the user data as JSON
      Response.ContentType = "application/json";
      //Response.Write(Newtonsoft.Json.JsonConvert.SerializeObject(userData));
      Response.End();
    }

    private object GetUserById(string userId)
    {
      // Replace this with your actual data retrieval logic
      // Fetch data from the database and return it as an object
      return new
      {
        fullName = "John Doe", // Example user data
                               // ... Include other properties you want to retrieve ...
      };
    }

  }
}
