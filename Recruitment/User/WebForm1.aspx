<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Recruitment.User.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <asp:Repeater ID="questionRepeater" runat="server">
    <ItemTemplate>
        <asp:Label ID="lblQuestion" runat="server" Text='<%# Eval("QuestionText") %>'></asp:Label>
        <asp:PlaceHolder ID="phInput" runat="server"></asp:PlaceHolder>
    </ItemTemplate>
</asp:Repeater>

         <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />

 

</asp:Content>
