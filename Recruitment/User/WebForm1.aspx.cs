using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace Recruitment.User
{
    public partial class WebForm1 : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            ViewStateMode = ViewStateMode.Enabled;

            if (!IsPostBack)
            {
            }


        }
    }

}
