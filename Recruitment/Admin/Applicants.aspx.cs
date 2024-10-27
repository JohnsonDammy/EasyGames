using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Recruitment.Admin
{
  public partial class Applicants : System.Web.UI.Page
  {

    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
       
      }
    }

    public void BindGridView(string searchKeyword)
    {
   
    }


    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
     
    }

    public void veiwuser()
    {

    }

    protected void BtnView_Click(object sender, EventArgs e)
    {
      Response.Redirect("ViewApplicant.aspx");

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
      string searchKeyword = txtSearch.Text.Trim();
      BindGridView(searchKeyword);
    }
  }
}
