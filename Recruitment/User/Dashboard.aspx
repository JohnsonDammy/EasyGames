<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Recruitment.User.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1>Dashboard</h1></center>

    <h1>My Application</h1>

              <asp:Repeater ID="repeaterControl" runat="server">
                <ItemTemplate>

  <div class="card">
    <div class="card-body">
         <h4 class="card-title"><span style="color:forestgreen">JobTitle:</span><asp:Label ID="JobTitle" runat="server" Text='<%# Eval("JobTitle") %>'></asp:Label></h4>
                <p class="card-text"><span style="color:forestgreen">Company Name:</span><asp:Label ID="CompanyName" runat="server" Text='<%# Eval("CompanyName") %>'></asp:Label>.</p>

             <a href='<%# "ViewStatus.aspx?PId=" + Eval("JobReferencesID") %>'  class="btn btn-success">View Status</a>

    </div>
  </div>

                               </ItemTemplate>
            </asp:Repeater>


   
</asp:Content>
