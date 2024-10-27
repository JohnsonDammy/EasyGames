<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Recruitment.User.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .ImgLogo{
            background-color:lightcoral;
            border-radius:25px;
        }
    </style>

    <style>
    .pagination a {
        display: inline-block;
        padding: 8px 16px;
        margin: 5px;
        text-decoration: none;
        border: 1px solid #ddd;
        color: #007BFF;
        border-radius: 5px;
    }

    .pagination a:hover {
        background-color: #007BFF;
        color: white;
    }
</style>
    <main>

        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="slider-active">
                <div class="single-slider slider-height d-flex align-items-center" data-background="../assets/img/hero/h1_heros.jpg">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-6 col-lg-9 col-md-10">
                                <div class="hero__caption">
                                    <h1>Turn your dream into reality</h1>
                                </div>
                            </div>
                        </div>
                        <!-- Search Box -->
                        <div class="row">
                            <div class="col-xl-8">
                                <!-- form -->
                               <%-- <form action="#" class="search-box">
                                    <div class="input-form">
                                        <input type="text" placeholder="Job Tittle or keyword">
                                    </div>
                                    <div class="select-form">
                                        <div class="select-itms">
                                            <select name="select" id="select1">
                                                <option value="">Location BD</option>
                                                <option value="">Location PK</option>
                                                <option value="">Location US</option>
                                                <option value="">Location UK</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="search-form">
                                        <a href="#">Find job</a>
                                    </div>	
                                </form>	--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
     

        <!-- Online CV Area Start -->
         <div class="online-cv cv-bg section-overly pt-90 pb-120"  data-background="../assets/img/gallery/cv_bgs.jpg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-10">
                        <div class="cv-caption text-center">
                            <p class="pera2"> Make a Great Change with Your Transaction</p>
                            <a href="Register.aspx" class="border-btn2 border-btn4">Register Here</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Online CV Area End-->
        <!-- Featured_job_start -->
        
        <!-- Featured_job_end -->
   
    </main>
</asp:Content>
