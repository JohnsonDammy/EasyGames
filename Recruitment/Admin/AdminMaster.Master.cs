using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Recruitment.Admin
{
  public partial class AdminMaster : System.Web.UI.MasterPage
  {
    SessionHelper sessionHelper = new SessionHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        setUsers();
      }
    }


    public void setUsers()
    {
      int sessionID = 0;

      // Check if the session variable exists and is not null
      if (HttpContext.Current.Session["AdminID"] != null)
      {
        sessionID = (int)HttpContext.Current.Session["AdminID"];
      }
      else if (HttpContext.Current.Session["HR"] != null)
      {
        sessionID = (int)HttpContext.Current.Session["HR"];
      }
      else
      {

      }
    }


    public string setSessionUser()
    {
      return sessionHelper.SetSessionUser();
    }

  }
}
