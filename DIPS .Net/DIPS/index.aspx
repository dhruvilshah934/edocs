<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DIPS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>HOME</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="support/images/background.jpg" alt="bg-img1">
                <div class="carousel-caption">
                    <b>
                        <h3 style="color: #000022;">1.SignUp with your few unique detalis</h3>
                        <p style="color: #000022;">Handle your Document Digitally</p>
                    </b>
                </div>
            </div>

            <div class="item">
                <img src="support/images/background.jpg" alt="bg-img2">
                <div class="carousel-caption">
                    <b>
                        <h3 style="color: #000022;">2.Enter Your AADHAR / Mobile with password to LogIn</h3>
                        <p style="color: #000022;">Handle your Document Digitally</p>
                    </b>
                </div>
            </div>

            <div class="item">
                <img src="support/images/background.jpg" alt="bg-img3">
                <div class="carousel-caption">
                    <b>
                        <h3 style="color: #000022;">3.On Successfull LogIn Retrive your any Document and save it on your
                            dashboard</h3>
                        <p style="color: #000022;">Handle your Document Digitally</p>
                    </b>
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- </header> -->
    <!-- <main>
        <section class="banner-image">
            <div class="container">
                <div class="banner-content">
                    <h1>Welcome</h1>
                    <p>Carry your any ID anywhere online</p>
                    <a href="#" class="btn btn-danger btn-lg active">Quick Info</a>
                </div>
            </div>
        </section>
    </main> -->

    <script type="text/javascript">
        function myFunction() {
            document.getElementById("myDropdown").classList.toggle("show");
        }

        // Close the dropdown menu if the user clicks outside of it
        window.onclick = function (event) {
            if (!event.target.matches('.dropbtn')) {
                var dropdowns = document.getElementsByClassName("dropdown-content");
                var i;
                for (i = 0; i < dropdowns.length; i++) {
                    var openDropdown = dropdowns[i];
                    if (openDropdown.classList.contains('show')) {
                        openDropdown.classList.remove('show');
                    }
                }
            }
        }

    </script>
</asp:Content>
