using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Recruitment.Admin
{
  public class SessionHelper
  {
    
    
      public  string SetSessionUser()
      {
        string result = "";

        if (HttpContext.Current.Session["HR"] != null || HttpContext.Current.Session["AdminID"] != null)
        {
          if (HttpContext.Current.Session["HR"] is int)
          {
            int HRId = (int)HttpContext.Current.Session["HR"];
            if (HRId == 6)
            {
              result = "HR";
            }
          }
          else if (HttpContext.Current.Session["AdminID"] is int)
          {
            int adminId = (int)HttpContext.Current.Session["AdminID"];
            if (adminId == 1)
            {
              result = "ADMIN";
            }
          }
        }

        return result;
      }
    }


  
}
