<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Recruitment.User.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            font-family: Arial;
        }

        /* Style the tab */
        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: lightblue;
        }

        /* Style the buttons i<a href="DisplayN.aspx.cs">DisplayN.aspx.cs</a>nside the tab */
        .tab button {
            background-color: inherit;
            float: left;
            border: none;
            outline: none;
            color: black;
            cursor: pointer;
            padding: 14px 16px;
            transition: 0.3s;
            font-size: 17px;
        }

        /* Change background color of buttons on hover */
        .tab button:hover {
            background-color: #ddd;
        }

        /* Create an active/current tablink class */
        .tab button.active {
            background-color: #ccc;
        }

        /* Style the tab content */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
        }
    </style>


    <div class="tab">
        <button type="button" class="tablinks"  onclick="openCity(event, 'PersonalDetails')" id="defaultOpen">Personal</button>
        <button type="button" class="tablinks" onclick="openCity(event, 'EducationDetails')">Education</button>
        <button type="button" class="tablinks" onclick="openCity(event, 'Certificate')">Certificate / Licenses</button>
        <button type="button" class="tablinks" onclick="openCity(event, 'Skills')"> Skills </button>
        <button type="button" class="tablinks" onclick="openCity(event, 'Languages')"> Languages </button>
        <button type="button" class="tablinks" onclick="openCity(event, 'WorkExperiences')">Work Experience </button> 
        <button type="button" class="tablinks" onclick="openCity(event, 'Screening')">Screening </button>
         <button type="button" class="tablinks" onclick="openCity(event, 'NoticePeriod')">Notice Period </button>
         <button type="button" class="tablinks" onclick="openCity(event, 'CurrentSalary')">Current Salary </button>
        <button type="button" class="tablinks" onclick="openCity(event, 'Documents')">Documents </button>

    </div>

    <div id="PersonalDetails" class="tabcontent">
        <section class="pt-50 pb-40">
            <div class="row">
                <div class="col-12 pd-20">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title text-center">Personal Details</h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">


                            <div class="col-12">
                                <div class="form-group">
                                    <label>Full Names:</label>
                                    <asp:TextBox ID="Fullname" runat="server" CssClass="form-control"
                                        placeholder="Enter Fullname" required></asp:TextBox>

                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Nationality:</label>

                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control w-100"
                                        AppendDataBoundItems="true">
                                        <asp:ListItem >Select Nationality</asp:ListItem>
                                        <asp:ListItem Value="0">SA</asp:ListItem>
                                        <asp:ListItem Value="0">Non SA (With Work Visa Or Critical Skilss)
                                        </asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Country:</label>

                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control w-100">
                                        <asp:ListItem Value="0">Select County</asp:ListItem>
                                        <asp:ListItem Value="0">South Africa</asp:ListItem>
                                        <asp:ListItem Value="0">Nigeria</asp:ListItem>
                                        <asp:ListItem Value="0">Zimbabwe</asp:ListItem>
                                        <asp:ListItem Value="0">Congo</asp:ListItem>
                                        <asp:ListItem Value="0">Niger</asp:ListItem>
                                        <asp:ListItem Value="0">Kenya</asp:ListItem>
                                        <asp:ListItem Value="0">Cameroon</asp:ListItem>
                                        <asp:ListItem Value="0">Ghana</asp:ListItem>
                                        <asp:ListItem Value="0">Mozambique</asp:ListItem>
                                        <asp:ListItem Value="0">Botswana</asp:ListItem>
                                        <asp:ListItem Value="0">France</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>City:</label>

                                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control w-100"
                                        AppendDataBoundItems="true" DataTextField="CountryName"
                                        DataValueField="CountryName">
                                        <asp:ListItem Value="0">Select City</asp:ListItem>
                                        <asp:ListItem Value="0">Durban</asp:ListItem>
                                         <asp:ListItem Value="0">Cape Town</asp:ListItem>
                                         <asp:ListItem Value="0">Johannesburg</asp:ListItem>
                                         <asp:ListItem Value="0">Port Elizabeth</asp:ListItem>
                                        <asp:ListItem Value="0">Petermaritzburg</asp:ListItem>
                                        <asp:ListItem Value="0">Polokwane</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <%--<div class="col-12">
                                <div class="form-group">
                                    <label>Country</label>
                                    <asp:DropDownList ID="ddlCountry" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control w-100"
                                        AppendDataBoundItems="true" DataTextField="CountryName" DataValueField="CountryName">
                                        <asp:ListItem Value="0">Select Country</asp:ListItem>
                                    </asp:DropDownList>
            
                                     
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" SelectCommand="SELECT [CountryName] FROM [Country]"></asp:SqlDataSource>
                                </div>
                            </div>--%>

                            <%--    <div class="col-12">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control w-100"
                                        AppendDataBoundItems="true" DataTextField="CountryName" DataValueField="CountryName">
                                        <asp:ListItem Value="0">Select City</asp:ListItem>
                                    </asp:DropDownList>
            
                                     
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString %>" SelectCommand="SELECT [CountryName] FROM [Country]"></asp:SqlDataSource>
                                </div>
                            </div>--%>


                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Driving Licences:</label>

                                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control w-100"
                                        AppendDataBoundItems="true" DataTextField="Drivers"
                                        DataValueField="Drivers">
                                         <asp:ListItem Value="0">Select Option</asp:ListItem>
                                        <asp:ListItem Value="0">Yes</asp:ListItem>
                                        <asp:ListItem Value="0">No</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Date of Birth:</label>
                                    <input class="form-control w-100" type="date" runat="server"
                                        id="date">
                                </div>
                            </div>

                        </div>

                        <div class="form-group mt-3">
                            <asp:Button ID="btnRegister" CssClass="button button-contractForm boxed-btn"
                                runat="server" Text="Save" />


                        </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                          <asp:HyperLink ID="HyperLink8" onclick="openCity(event, 'EducationDetails')" runat="server">Skip</asp:HyperLink>
                           </div>
                         </div>
                    </div>
                </div>
            </div>
        </section>
        <br /><br /><br />
    </div>

    <div id="EducationDetails" class="tabcontent">
        <section class="pt-50 pb-40">
            <div class="row">
                <div class="col-12 pd-20">
                    <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title text-center">Education Details</h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Graduation Year:</label>
                                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control w-100">
                                         <asp:ListItem>Select Graduation Year</asp:ListItem>
                                        <asp:ListItem>2023</asp:ListItem>
                                        <asp:ListItem>2022</asp:ListItem>
                                        <asp:ListItem>2021</asp:ListItem>
                                        <asp:ListItem>2020</asp:ListItem>
                                        <asp:ListItem>2019</asp:ListItem>
                                        <asp:ListItem>2018</asp:ListItem>
                                        <asp:ListItem>2017</asp:ListItem>
                                        <asp:ListItem>2016</asp:ListItem>
                                        <asp:ListItem>2015</asp:ListItem>
                                        <asp:ListItem>2014</asp:ListItem>
                                        <asp:ListItem>2013</asp:ListItem>
                                        <asp:ListItem>2012</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <div class="form-group">
                                        <label>Institution:</label>
                
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"
                                            placeholder="Enter Institution" required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Fields of Study:</label>
            
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"
                                        placeholder="Enter Fields of Student" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Qualification:</label>
                                    <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control w-100">
                                       <asp:ListItem>Select Qualification</asp:ListItem>
                                        <asp:ListItem>Certicate</asp:ListItem>
                                        <asp:ListItem>Matric</asp:ListItem>
                                        <asp:ListItem>Degree</asp:ListItem>
                                        <asp:ListItem>Diploma</asp:ListItem>
                                        <asp:ListItem>Honors</asp:ListItem>
                                        <asp:ListItem>PHD, Doctorate</asp:ListItem>
            
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <asp:Button ID="Button1" CssClass="button button-contractForm boxed-btn"
                                runat="server" Text="Save" />
                             <asp:Button ID="Button9" CssClass="btn btn-success"
                                runat="server" Text="Add" />

                        </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                          <asp:HyperLink ID="HyperLink9" onclick="openCity(event, 'Certificate')" runat="server">Skip</asp:HyperLink>
                           </div>
                         </div>
                    </div>
                </div>
            </div>
        </section>
        <br /><br /><br />
      
    </div>

    <div id="Certificate" class="tabcontent">
        <section class="pt-50 pb-40">
            <div class="row">
                <div class="col-12 pd-20">
                    <asp:Label ID="Label2" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title text-center">Certificate Details</h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">
                            <div class="col-12">
                            

                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <div class="form-group">
                                        <label>Name:</label>
                
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"
                                            placeholder="Enter Institution" required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Issued Organization:</label>
            
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"
                                        placeholder="Enter Fields of Student" required></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Period Obtain:</label>
                                    <input type="date" runat="server" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <asp:Button ID="Button2" CssClass="button button-contractForm boxed-btn"
                                runat="server" Text="Save" />

                            <asp:Button ID="Button14" CssClass="btn btn-success"
                                runat="server" Text="Add" />
                           
                        </div>

                        <div class="col-sm-6"></div>

                        <div class="col-sm-6">
                                <div class="form-group">
                          <asp:HyperLink ID="HyperLink1" onclick="openCity(event, 'Skills')" runat="server">Skip</asp:HyperLink>
                           </div>
                         </div>
                    </div>
                </div>
            </div>
        </section>
        <br /><br /><br />
    </div>

    
    <div id="Skills" class="tabcontent">
           <section class="pt-50 pb-40">
            <div class="row">
                <div class="col-12 pd-20">
                    <asp:Label ID="Label4" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title text-center">Skills Details</h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">

                            <div class="col-6">
                                <div class="form-group">
                                    <label>Skills - List and rate your skill:</label>
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"
                                        placeholder="Enter Skill" required></asp:TextBox>

                                </div>
                            </div>
        

                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Level:</label>
                                <asp:DropDownList ID="DropDownList9" runat="server" CssClass="form-control w-100">
                                    <asp:ListItem>Select Level</asp:ListItem>
                                    <asp:ListItem>Beginner</asp:ListItem>
                                    <asp:ListItem>Intermediate</asp:ListItem>
                                    <asp:ListItem>Advanced</asp:ListItem>
                                    <asp:ListItem>Expert</asp:ListItem>
                                   
        
                                </asp:DropDownList>
                            </div>
                            </div>

                        </div>
                        <div class="form-group mt-3">
                            <asp:Button ID="Button4" CssClass="button button-contractForm boxed-btn"
                                runat="server" Text="Save" />

                            <asp:Button ID="Button13" CssClass="btn btn-success"
                                runat="server" Text="Add" />
                        </div>

                          <div class="col-sm-6">
                                <div class="form-group">
                          <asp:HyperLink ID="HyperLink2" onclick="openCity(event, 'Languages')" runat="server">Skip</asp:HyperLink>
                           </div>
                         </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

      <div id="Languages" class="tabcontent">
           <section class="pt-50 pb-40">
            <div class="row">
                <div class="col-12 pd-20">
                    <asp:Label ID="Label9" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title text-center">Language Details</h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">

                            <div class="col-6">
                                <div class="form-group">
                                    <label>Languages:</label>
                                    <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"
                                        placeholder="Enter Language" required></asp:TextBox>

                                </div>
                            </div>
        

                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Level:</label>
                                <asp:DropDownList ID="DropDownList13" runat="server" CssClass="form-control w-100">
                                    <asp:ListItem>Select Level</asp:ListItem>
                                    <asp:ListItem>Conversational</asp:ListItem>
                                    <asp:ListItem>Professional</asp:ListItem>
                                    <asp:ListItem>Native</asp:ListItem>
                                    <asp:ListItem>Bilingual</asp:ListItem>

                                </asp:DropDownList>
                            </div>
                            </div>

                        </div>
                        <div class="form-group mt-3">
                            <asp:Button ID="Button15" CssClass="button button-contractForm boxed-btn"
                                runat="server" Text="Save" />

                            <asp:Button ID="Button16" CssClass="btn btn-success"
                                runat="server" Text="Add" />
                        </div>
                          <div class="col-sm-6">
                                <div class="form-group">
                          <asp:HyperLink ID="HyperLink3" onclick="openCity(event, 'WorkExperiences')" runat="server">Skip</asp:HyperLink>
                           </div>
                         </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <div id="WorkExperiences" class="tabcontent">
        <section class="pt-50 pb-40">
            <div class="row">
                <div class="col-12 pd-20">
                    <asp:Label ID="Label3" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title text-center">Work Experience Details</h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">


                            <div class="col-12">
                                <div class="form-group">
                                    <label>Job title:</label>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"
                                        placeholder="Enter Job title" required></asp:TextBox>

                                </div>
                            </div>
        
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Start Date:</label>

                                    <input type="date" runat="server" class="form-control w-100">
                                     
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>End Date:</label>
                                    <input class="form-control w-100" type="date" runat="server"
                                        id="date1">
                                </div>
                                
                            </div>
                               <div class="col-sm-6">
                            <div class="form-group">
                                  <span><input type="checkbox" runat="server" value="Current">Current</span>
                                </div>
                                   </div>
                          
                            <div class="col-sm-6">
                            <div class="form-group">
                                <label>Industry:</label>
                                <asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-control w-100">
                                    <asp:ListItem>Select industry</asp:ListItem>
                                    <asp:ListItem>Matric</asp:ListItem>
                                    <asp:ListItem>Degree</asp:ListItem>
                                    <asp:ListItem>Diploma</asp:ListItem>
                                    <asp:ListItem>Honors</asp:ListItem>
                                    <asp:ListItem>PHD, Doctorate</asp:ListItem>
        
                                </asp:DropDownList>
                            </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label>Employment Type:</label>
                                    <asp:DropDownList ID="DropDownList8" runat="server" CssClass="form-control w-100">
                                        <asp:ListItem>Select Employment Type</asp:ListItem>
                                        <asp:ListItem>Matric</asp:ListItem>
                                        <asp:ListItem>Degree</asp:ListItem>
                                        <asp:ListItem>Diploma</asp:ListItem>
                                        <asp:ListItem>Honors</asp:ListItem>
                                        <asp:ListItem>PHD, Doctorate</asp:ListItem>
            
                                    </asp:DropDownList>
                                </div>
                                </div>


                        </div>
                        <div class="form-group mt-3">
                            <asp:Button ID="Button3" CssClass="button button-contractForm boxed-btn"
                                runat="server" Text="Save" />

                            <asp:Button ID="Button12" CssClass="btn btn-outline-success"
                                runat="server" Text="Add" />

                        </div>
                          <div class="col-sm-6">
                                <div class="form-group">
                          <asp:HyperLink ID="HyperLink4" onclick="openCity(event, 'Screening')" runat="server">Skip</asp:HyperLink>
                           </div>
                         </div>
                    </div>
                </div>
            </div>
        </section>
        <br /><br /><br />
    </div>


    <div id="Screening" class="tabcontent">
     <section class="pt-50 pb-40">
            <div class="row">
                <div class="col-12 pd-20">
                    <asp:Label ID="Label7" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title text-center">Disired Job </h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">

                         <div class="col-12">
                                <div class="form-group">
                                    <label>Job Location:</label>
                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"
                                        placeholder="Enter Job Location" required></asp:TextBox>

                                </div>
                            </div>

                              <div class="col-6">
                                <div class="form-group">
                                    <label>Job Title:</label>
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"
                                        placeholder="Enter Job Title" required></asp:TextBox>

                                </div>
                            </div>

                             <div class="col-6">
                                <div class="form-group">
                                    <label>Job Category:</label>
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"
                                        placeholder="Enter Job Category" required></asp:TextBox>

                                </div>
                            </div>


                        </div>

                        <div class="form-group mt-3">
                            <asp:Button ID="Button7" CssClass="button button-contractForm boxed-btn"
                                runat="server" Text="Save" />


                        </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                          <asp:HyperLink ID="HyperLink5" onclick="openCity(event, 'NoticePeriod')" runat="server">Skip</asp:HyperLink>
                           </div>
                         </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

        <div id="NoticePeriod" class="tabcontent">
         <section class="pt-50 pb-40">
            <div class="row">
                <div class="col-12 pd-20">
                    <asp:Label ID="Label5" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title text-center">Notice Period</h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">

                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>Availability:</label>
                                <asp:DropDownList ID="DropDownList10" runat="server" CssClass="form-control w-100">
                                    <asp:ListItem>Select Availability</asp:ListItem>
                                    <asp:ListItem>Immediately</asp:ListItem>
                                    <asp:ListItem>1 Week</asp:ListItem>
                                    <asp:ListItem>2 Weeks</asp:ListItem>
                                    <asp:ListItem>1 Month</asp:ListItem>
                                    <asp:ListItem>Calender Month</asp:ListItem>
        
                                </asp:DropDownList>
                            </div>
                            </div>




                        </div>
                        <div class="form-group mt-3">
                            <asp:Button ID="Button5" CssClass="button button-contractForm boxed-btn"
                                runat="server" Text="Save" />


                        </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                          <asp:HyperLink ID="HyperLink6" onclick="openCity(event, 'CurrentSalary')" runat="server">Skip</asp:HyperLink>
                           </div>
                         </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <div id="CurrentSalary" class="tabcontent">
            <section class="pt-50 pb-40">
            <div class="row">
                <div class="col-12 pd-20">
                    <asp:Label ID="Label6" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title text-center">Salary Details</h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">

                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>Salary Range:</label>
                                <asp:DropDownList ID="DropDownList11" runat="server" CssClass="form-control w-100">
                                    <asp:ListItem>Select Salary</asp:ListItem>
                                    <asp:ListItem><10 000 annually</asp:ListItem>
                                    <asp:ListItem>10 000 - 50 000</asp:ListItem>
                                    <asp:ListItem>50 000 - 100 000</asp:ListItem>
                                    <asp:ListItem>100 000 - 150 000</asp:ListItem>
                                    <asp:ListItem>150 000 - 200 000</asp:ListItem>
                                    <asp:ListItem>>200 000</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                         </div>


                        </div>
                        <div class="form-group mt-3">
                            <asp:Button ID="Button6" CssClass="button button-contractForm boxed-btn"
                                runat="server" Text="Save" />

                 
                        </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                          <asp:HyperLink ID="HyperLink7" onclick="openCity(event, 'Documents')" runat="server">Skip</asp:HyperLink>
                           </div>
                         </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

     <div id="Documents" class="tabcontent">
            <section class="pt-50 pb-40">
            <div class="row">
                <div class="col-12 pd-20">
                    <asp:Label ID="Label8" runat="server" Visible="false"></asp:Label>
                </div>
                <div class="col-12">
                    <h2 class="contact-title text-center">Documents</h2>
                </div>
                <div class="col-lg-6 mx-auto">
                    <div class="form-contact contact_form">
                        <div class="row">

                        <div class="col-sm-12">
                            <div class="form-group">
                                <label>Document Type:</label>
                                <asp:DropDownList ID="DropDownList12" runat="server" CssClass="form-control w-100">
                                    <asp:ListItem>Select Document</asp:ListItem>
                                    <asp:ListItem>Matric Certificate</asp:ListItem>
                                    <asp:ListItem>Identity Document</asp:ListItem>
                                    <asp:ListItem>Degree/Diploma Certificate</asp:ListItem>
                                    <asp:ListItem>Drivers License</asp:ListItem>
                                     <asp:ListItem>Other Certificate</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                         </div>

                            <div>

                            </div>
                           <div class="col-sm-12">
                             <div class="form-group">
                                 <label>File:</label>
                                 <input id="File1" type="file" />
                             </div>
                                
                          </div>

                        </div>

                        <div class="form-group mt-3">
                            <asp:Button ID="Button10" CssClass="button button-contractForm boxed-btn"
                                runat="server" Text="Save" />

                            <asp:Button ID="Button11" CssClass="btn btn-success"
                                runat="server" Text="Add" />
                        </div>

                          <div class="form-group mt-3">
                           
                                          <asp:Button ID="Button8" CssClass=" btn btn-info"
                                runat="server" Text="View" />

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <script>
        function openCity(evt, cityName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.className += " active";
        }

        document.getElementById("defaultOpen").click();
    </script>

</asp:Content>
