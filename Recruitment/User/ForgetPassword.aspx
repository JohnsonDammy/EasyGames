<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="Recruitment.User.ForgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="modal fade" id="customAlert1N"  tabindex="-1" role="dialog" aria-labelledby="customAlertLabel" >
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="customAlertLabel1"><i class="fas fa-check-circle"></i> Success</h5>
             
            </div>
            <div class="modal-body">
Verification pin has been Sent, Kindly Check Your SMS

            </div>
            <div class="modal-footer">
                <button type="button" id="btnOK1" class="btn btn-primary">OK</button>
            </div>
        </div>
    </div>
</div>

         <div class="modal fade" id="customAlert1NE"  tabindex="-1" role="dialog" aria-labelledby="customAlertLabel" >
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="customAlertLabel"><i class="fas fa-check-circle"></i> Success</h5>
             
            </div>
            <div class="modal-body">
Verification pin has been Sent, Kindly Check Your Email
            </div>
            <div class="modal-footer">
                <button type="button" id="btnOKE" class="btn btn-primary">OK</button>
            </div>
        </div>
    </div>
</div>

     <div class="modal fade" id="failPhone" tabindex="-1" role="dialog" aria-labelledby="customAlertLabel">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Custfail"><i style="background-color: red" class="fa fa-exclamation-circle"></i>Failed</h5>

                </div>
                <div class="modal-body">
Phone Number not Exist!!!

                </div>
                <div class="modal-footer">
                    <button type="button" id="btnOKFail" class="btn btn-primary">OK</button>
                </div>
            </div>
        </div>
    </div>


       <div class="modal fade" id="failEmail" tabindex="-1" role="dialog" aria-labelledby="customAlertLabel">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Custfaikl"><i style="background-color: red" class="fa fa-exclamation-circle"></i>Failed</h5>

                </div>
                <div class="modal-body">
Phone Number not Exist!!!

                </div>
                <div class="modal-footer">
                    <button type="button" id="btnOKEmailF" class="btn btn-primary">OK</button>
                </div>
            </div>
        </div>
    </div>

    <section  class="pt-50 pb-40">
         <div class="row">
    <div class="col-12 pd-20">
        <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
    </div>
    <div class="col-12">
        <h2 class="contact-title text-center">Forgot Password</h2>
    </div>
    <div class="col-lg-6 mx-auto" >
        <div class="form-contact contact_form" >
            <div class="row">
      <%--          <div class="col-12">
                    <label>login type:</label>
                    <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="form-control w-100"  AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Select Type:</asp:ListItem>
                    </asp:DropDownList>
                </div>--%>

                   <div class="col-12">
                    <div class="form-group">
                         <label runat="server" id="lblEmal" visible="true">Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email" required Visible="true"></asp:TextBox>
                         
                    </div>
                </div>

                  <div class="col-12">
                    <div class="form-group">
                         <label runat="server" id="lblphone" visible="false">Phone Number:</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter Phone Number" required Visible="false"></asp:TextBox>
                         
                    </div>
                </div>

                
            </div>
            <div class="form-group mt-3">
                <asp:Button ID="btnforgetPass"  CssClass="button button-contractForm boxed-btn"  runat="server" Text="Forget Password" OnClick="btnforgetPass_Click" />
            </div>
        </div>
    </div>
</div>
    </section>
    <br /><br /><br />

</asp:Content>
