<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Recruitment.User.SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Include Bootstrap CSS and JS -->



    <!-- Modal -->
    <div class="modal fade" id="customAlert" tabindex="-1" role="dialog" aria-labelledby="customAlertLabel">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="customAlertLabel"><i class="fas fa-check-circle"></i>Success</h5>

                </div>
                <div class="modal-body">
                    Admin Login Successfully 

                </div>
                <div class="modal-footer">
                    <button type="button" id="btnOK" class="btn btn-primary">OK</button>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="customAlert1" tabindex="-1" role="dialog" aria-labelledby="customAlertLabel">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="customAlertLabel1"><i class="fas fa-check-circle"></i>Success</h5>

                </div>
                <div class="modal-body">
                    Login Successfully

                </div>
                <div class="modal-footer">
                    <button type="button" id="btnOK1" class="btn btn-primary">OK</button>
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
                    Invalid Email Or Password
                </div>
                <div class="modal-footer">
                    <button type="button" id="btnOKFail" class="btn btn-primary">OK</button>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="SuccessHR" tabindex="-1" role="dialog" aria-labelledby="customAlertLabel">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Custfails"><i class="fas fa-check-circle"></i>Success</h5>

                </div>
                <div class="modal-body">
                    HR Login in Successfully
                </div>
                <div class="modal-footer">
                    <button type="button" id="btnOKHR" class="btn btn-primary">OK</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="Invalid" tabindex="-1" role="dialog" aria-labelledby="customAlertLabel">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Custfajils"><i style="background-color: red" class="fa fa-exclamation-circle"></i>Failed</h5>

                </div>
                <div class="modal-body">
                    Email does not Exist Please Register!!!
                </div>
                <div class="modal-footer">
                    <button type="button" id="btnOKIN" class="btn btn-primary">OK</button>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="WrongPass" tabindex="-1" role="dialog" aria-labelledby="customAlertLabel">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Custfajjils"><i style="background-color: red" class="fa fa-exclamation-circle"></i>Failed</h5>

                </div>
                <div class="modal-body">
                    Invalid Phone Or Password

                </div>
                <div class="modal-footer">
                    <button type="button" id="btnWrong" class="btn btn-primary">OK</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="InvalidP" tabindex="-1" role="dialog" aria-labelledby="customAlertLabel">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Cust"><i style="background-color: red" class="fa fa-exclamation-circle"></i>Failed</h5>

                </div>
                <div class="modal-body">
                    Phonenumber does not exist!!! Please Login
                </div>
                <div class="modal-footer">
                    <button type="button" id="btnWrongP" class="btn btn-primary">OK</button>
                </div>
            </div>
        </div>
    </div>

   
    <section class="pt-50 pb-40">
        <div class="row">
            <div class="col-12 pd-20">
                <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
            </div>
            <div class="col-12">
                <h2 class="contact-title text-center">Login</h2>
            </div>
            <div class="col-lg-6 mx-auto">
                <div class="form-contact contact_form">
                    <div class="row">


                     <%--   <div class="col-12">
                            <label>login type:</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control w-100" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter Phpne Number" required Visible="false"></asp:TextBox>

                            </div>
                        </div>

                        <div class="col-12">
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox ID="txtPassword" type="password" runat="server" CssClass="form-control" placeholder="Enter Password"></asp:TextBox>
                            </div>
                        </div>



                    </div>
                    <div class="form-group mt-3">
                        <asp:Button ID="btnRegister" CssClass="button button-contractForm boxed-btn" runat="server" Text="Login" OnClick="btnRegister_Click1" />
                        <span class="clickLink"><a href="Register.aspx">You don't have an account? Register Click Here..</a></span><br />
                        <br />
<%--                        <span class="clickLink"><a href="ForgetPassword.aspx">Forget Password</a></span>--%>

                    </div>
                </div>

                <%--</div>--%>
            </div>
    </section>
    <br />
    <br />
    <br />
</asp:Content>
