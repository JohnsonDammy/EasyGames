<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Recruitment.User.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

    <asp:ScriptManager ID="ScriptManager1" runat="server">  
</asp:ScriptManager> 

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>



   <section class="pt-50 pb-40">
       
       <div class="modal fade" id="InvalidP"  tabindex="-1" role="dialog" aria-labelledby="customAlertLabel" >
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="Cust"><i  style="background-color:red" class="fa fa-exclamation-circle"></i> Failed</h5>
    
            </div>
            <div class="modal-body">
                Phone Number Exist! Please login
            </div>
            <div class="modal-footer">
                <button type="button" id="btnWrongP" class="btn btn-primary">OK</button>
            </div>
        </div>
    </div>
</div>

        <div class="modal fade" id="customAlert1N"  tabindex="-1" role="dialog" aria-labelledby="customAlertLabel" >
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="customAlertLabel1"><i class="fas fa-check-circle"></i> Success</h5>
             
            </div>
            <div class="modal-body">
                Register Successfully
            </div>
            <div class="modal-footer">
                <button type="button" id="btnOK1" class="btn btn-primary">OK</button>
            </div>
        </div>
    </div>
</div>


            <div class="modal fade" id="EmailAlready"  tabindex="-1" role="dialog" aria-labelledby="customAlertLabel" >
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="Cushht"><i  style="background-color:red" class="fa fa-exclamation-circle"></i> Failed</h5>

            </div>
            <div class="modal-body">
                Email already Exist Please Login
            </div>
            <div class="modal-footer">
                <button type="button" id="btnOK2" class="btn btn-primary">OK</button>
            </div>
        </div>
    </div>
</div>



        <div class="row">
            <div class="col-12 pd-20">
                <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
            </div>
            <div class="col-12">
                <h2 class="contact-title text-center">Create an account</h2>
            </div>
            <div class="col-lg-6 mx-auto">
                <div class="form-contact contact_form">
                    <div class="row">
             

                        <div class="col-12">
                                 <div class="form-group">
                         <label>FirstName</label>
                        <asp:TextBox ID="txtFullNames" runat="server" CssClass="form-control" placeholder="Enter Full Names" required></asp:TextBox>
                         
                    </div>
                         
  
                             <div class="form-group" >
                                <label runat="server" id="Label1" visible="true"> LastName:</label>
                                <asp:TextBox ID="LastName" runat="server" CssClass="form-control" placeholder="Enter LastName" required Visible="true"></asp:TextBox>
                            </div>


                             <div class="form-group" >
                                <label runat="server" id="lblEmal" visible="true"> Email:</label>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email" required Visible="true"></asp:TextBox>
                            </div>

                            
                             <div class="form-group" >
                                <label runat="server" id="lblPhone" visible="false"> Phone Number:</label>
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter Password" required Visible="false"></asp:TextBox>

                            </div>
                        </div>


                  
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox ID="txtPassword" type="password" runat="server" CssClass="form-control" placeholder="Enter Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <asp:TextBox ID="txtConfirmPassword" type="password" runat="server" CssClass="form-control" placeholder="Confirm Password"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password & Confirm Password should be same" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ForeColor="Red" Display="Dynamic" setFocusOnError="true" Fort-size="Small"></asp:CompareValidator>
                            </div>
                        </div>


               <div class="col-12">
                            <div class="form-group">
                                <label><a href="TandC.aspx" style="color:blue">Terms & Conditions*</a></label>
                               <p><input type="checkbox" value="Privacy Policy" runat="server" required>By creating an account  I understand and agree that my details  will be electronically processed and collected.</p>
                            </div>
                        </div>
            </div>


            <div class="form-group mt-3">
<%--               <a href="Welcome.aspx"><asp:Button ID="btnRegister"  CssClass="button button-contractForm boxed-btn" runat="server" Text="Register" /></a> --%>
                <asp:Button ID="btnSubmit" runat="server" class="button button-contractForm boxed-btn" Text="Register" OnClick="btnSubmit_Click"/>
              <%--  <a href="Welcome.aspx"><button class="button button-contractForm boxed-btn" runat="server"  type="button">Register</button></a>--%>
                <span class="clickLink"><a href="SignIn.aspx">Already Registered? Click Here..</a></span>

            </div>
        </div>
        </div>
        </div>
    </section>
    <br /><br /><br />

   
</asp:Content>

 

