<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Recruitment.Admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <%  if (Session["AdminID"] != null )
            { %>


   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
  <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
      <div class="container">
  <center><h2>Report</h2></center>


        <asp:Label ID="lblApprove" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblApplicant" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblContact" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblShortlist" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblReject" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblInterview" runat="server" Text=""></asp:Label>

<div class="row">
  <div class="column">
    <div class="card">
     <div id="myPlot1" style="width:100%;max-width:550px"></div>

    </div>
  </div>
    
  <div class="column">
    <div class="card">
      <div id="myPlot" style="width:100%;max-width:550px"></div>

    </div>
  </div>
  </div>


   
</div>


  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


    <section class="content">
                <div class="container-fluid">
                    <div class="row">
                   <%  if (SetSesssionUser() == "ADMIN")
                       { %>






                        <div class="col-12 col-sm-6 col-md-3">
                            <div class="info-box">
                                <span class="info-box-icon bg-info elevation-1"><i class="fa fa-handshake"></i></span>
                              
                              <div class="info-box-content">
                                   <a href="Users.aspx">   <span class="info-box-text">All Transaction</span></a>
                            </div>
                                    <span class="info-box-number"></span>
                                </div>
                        </div>

            
                     
                      <%} %>

          
                    
                    </div>
                </div>
             </section>
     <%}
         else
         {
                            
            string script = "setTimeout(function() { alert('Please Login'); window.location.href ='../User/SignIn.aspx'; }, 100);";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
         }
           %>

</asp:Content>
