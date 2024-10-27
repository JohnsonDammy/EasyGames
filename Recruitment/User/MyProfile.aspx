<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="Recruitment.User.MyProfile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <style>
        body {
            background: #f7f7ff;
            margin-top: 20px;
        }

        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 0 solid transparent;
            border-radius: .25rem;
            margin-bottom: 1.5rem;
            box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
        }

        .me-2 {
            margin-right: .5rem !important;
        }

        .progress-container {
            text-align: center;
            position: relative;
        }

        .progress-bar {
            width: 25%;
            height: 20px;
            background-color: #ccc;
            border-radius: 10px;
            position: relative;
            overflow: hidden;
        }

        .progress-fill {
            width: 0;
            height: 100%;
            background-color: #3498db;
            transition: width 0.3s ease;
        }

        .progress-text {
            position: absolute;
            top: 12.5%;
            left: 12.5%;
            transform: translate(-12.5%, -12.5%);
            font-size: 16px;
        }

        .dropdown-container-horizontals {
            max-width: 100%;
            /* Set the maximum width you desire */
            overflow-x: auto;
            /* Enable horizontal scrollbar when content overflows */
            white-space: nowrap;
            /* Prevent text wrapping */
            height: 150px;
        }

        .green-button {
            background-color: #097969;
        }
    </style>


    <% if (Session["UserID"] != null)
        { %>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="container">
        <div class="row">
            <!-- Transaction List -->

            <div class="col-lg-8 mx-auto">
                    <h2>Your Balance</h2>
                    <asp:Label ID="lblBalance" runat="server" CssClass="form-control" />
                </div>
            <div class="col-lg-8 mx-auto">
                <h2>Your Transactions</h2>
                <asp:GridView ID="gvTransactions" runat="server" AutoGenerateColumns="false" DataKeyNames="TransactionID" CssClass="table table-striped">
                    <Columns>
                        <asp:BoundField DataField="TransactionDate" HeaderText="Date" />
                        <asp:BoundField DataField="TransactionType" HeaderText="Type" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                        <asp:BoundField DataField="Comment" HeaderText="Comment" />
                    </Columns>
                </asp:GridView>

            </div>

            <!-- Add Transaction Form -->
            <div class="col-lg-8 mx-auto">
                <h2>Add New Transaction</h2>
                <div class="form-group">
                    <label for="transactionType">Transaction Type:</label>
                    <asp:DropDownList ID="ddlTransactionType" runat="server" CssClass="form-control">
                        <asp:ListItem Value="1">Debit</asp:ListItem>
                        <asp:ListItem Value="2">Credit</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label for="amount">Amount:</label>
                    <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="comment">Comment:</label>
                    <asp:TextBox ID="txtComment" runat="server" CssClass="form-control" TextMode="MultiLine" />
                </div>

                <asp:Button ID="btnAddTransaction" runat="server" Text="Add Transaction" CssClass="btn" OnClick="btnAddTransaction_Click" />
            </div>
        </div>


                       <!-- Modal -->
        <div class="modal fade" id="customAlert" tabindex="-1" role="dialog" aria-labelledby="customAlertLabel">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="customAlertLabel"><i class="fas fa-check-circle"></i>Success</h5>

                    </div>
                    <div class="modal-body">
                       Transaction Done 
                    </div>
                    <div class="modal-footer">
                        <button type="button" id="btnOK" class="btn btn-primary">OK</button>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <% }
        else
        {

            string script = "setTimeout(function() { alert('Please Login'); window.location.href ='Register.aspx'; }, 100);";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);

        }%>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



</asp:Content>
