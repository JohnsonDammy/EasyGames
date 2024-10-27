using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Recruitment.Admin
{
  public class ErrorHandling
  {
   


    public void handleError(string color, string message, string pagename)
    {
      
      var url = pagename+".aspx?color=" + HttpUtility.UrlEncode(color) + "&message=" + HttpUtility.UrlEncode(message);
      HttpContext.Current.Response.Redirect(url, false);
      HttpContext.Current.ApplicationInstance.CompleteRequest();
    }

 
    public void resetErrorHandingVariables(out string color, out string message)
    {
      
      color = HttpContext.Current.Request.QueryString["color"];
      message = HttpContext.Current.Request.QueryString["message"];


    }



  }
}
