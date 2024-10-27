<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="Recruitment.Admin.logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <div class="modal fade" id="customAlert1"  tabindex="-1" role="dialog" aria-labelledby="customAlertLabel" >
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="customAlertLabel1"><i class="fas fa-check-circle"></i> Success</h5>
             
            </div>
            <div class="modal-body">
Successfully Logout

            </div>
            <div class="modal-footer">
                <button type="button" id="btnOK1" class="btn btn-primary">OK</button>
            </div>
        </div>
    </div>
</div>

</asp:Content>
