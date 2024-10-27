using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Recruitment.Admin
{
  public partial class index : System.Web.UI.Page
  {
   
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
  

      }
    }


    //<asp:ListItem Value = "1" > Contact </ asp:ListItem>
    //                                  <asp:ListItem Value = "2" > Shortlisted </ asp:ListItem>
    //                                  <asp:ListItem Value = "3" > PreInterview </ asp:ListItem>
    //                                  <asp:ListItem Value = "4" > Approve </ asp:ListItem>
    //                                  <asp:ListItem Value = "5" > Reject </ asp:ListItem>


    public string SetSesssionUser()
    {
      SessionHelper sessionHelper = new SessionHelper();

      return sessionHelper.SetSessionUser();

    }
  }
}
