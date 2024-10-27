<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="UpdatePass.aspx.cs" Inherits="Recruitment.User.UpdatePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="modal fade" id="customAlert1NP"  tabindex="-1" role="dialog" aria-labelledby="customAlertLabel" >
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="customAabel"><i class="fas fa-check-circle"></i> Success</h5>
             
            </div>
            <div class="modal-body">
Password Updated Successfully, Kindly Please Login
            </div>
            <div class="modal-footer">
                <button type="button" id="btnOKP" class="btn btn-primary">OK</button>
            </div>
        </div>
    </div>
</div>

        <div class="modal fade" id="fail" tabindex="-1" role="dialog" aria-labelledby="customAlertLabel">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Custfail"><i style="background-color: red" class="fa fa-exclamation-circle"></i>Failed</h5>

                </div>
                <div class="modal-body">
Email Does not Exist Please Put the correct Email.
                </div>
                <div class="modal-footer">
                    <button type="button" id="btnOKFail" class="btn btn-primary">OK</button>
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
        <h2 class="contact-title text-center">Update Password</h2>
    </div>
    <div class="col-lg-6 mx-auto" >
        <div class="form-contact contact_form" >
            <div class="row">
         
                   <div class="col-12">
                    <div class="form-group">
                         <label runat="server" id="lblEmal" >Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Your Email" required></asp:TextBox>
                         
                    </div>
                </div>

                                     <div class="col-12">
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox ID="txtPassword" type="password" runat="server" CssClass="form-control" placeholder="Enter Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <asp:TextBox ID="txtConfirmPassword" type="password" runat="server" CssClass="form-control" placeholder="Enter Confirm Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password & Confirm Password should be same" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ForeColor="Red" Display="Dynamic" setFocusOnError="true" Fort-size="Small"></asp:CompareValidator>
                            </div>
                        </div>




             

     
            </div>
            <div class="form-group mt-3">
                <asp:Button ID="UpdatePassword"  CssClass="button button-contractForm boxed-btn"  runat="server" Text="Update Password" OnClick="UpdatePassword_Click" />
        

            </div>
        </div>
    </div>
</div>
    </section>
</asp:Content>
