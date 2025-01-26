<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/20/2025
  Time: 8:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LaptopMart</title>


    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="CSS/bootstrap.css" />

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet" />

    <!-- font awesome style -->
    <link href="CSS/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="CSS/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="CSS/responsive.css" rel="stylesheet" />
</head>
<body class="sub_page">
<div class="hero_area">
    <!-- header section strats -->
    <header class="header_section long_section px-0">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="home.jsp">
          <span>
            LAPTOP MART
          </span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="d-flex mx-auto flex-column flex-lg-row align-items-center">
                    <ul class="navbar-nav  ">
                        <li class="nav-item active">
                            <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="item-all">Shop</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="category.jsp">Categories</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="cart.jsp">Cart</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Log Out</a>
                        </li>
                    </ul>
                </div>
                <div class="quote_btn-container">

                    <form class="form-inline">
                        <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section long_section">
        <div id="customCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="container ">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="detail-box">
                                    <h1>
                                        Welcome to <br>
                                        Admin dashboard
                                    </h1>
                                    <p>
                                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Minus quidem maiores perspiciatis, illo maxime voluptatem a itaque suscipit.
                                    </p>
                                    <div class="btn-box">
                                        <a href="" class="btn1">
                                            Contact Us
                                        </a>
                                        <a href="" class="btn2">
                                            About Us
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="img-box">
                                    <img src="images/Download_premium_png_of_Laptop_screen_mockup_png_digital_device_by_Chanikarn_Thongsupa_about_png__transparent_png__png_laptop__sticker__and_collage_2762690-removebg-preview.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container ">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="detail-box">
                                    <h1>
                                        For All Your <br>
                                        Laptop Needs
                                    </h1>
                                    <p>
                                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Minus quidem maiores perspiciatis, illo maxime voluptatem a itaque suscipit.
                                    </p>
                                    <div class="btn-box">
                                        <a href="" class="btn1">
                                            Contact Us
                                        </a>
                                        <a href="" class="btn2">
                                            About Us
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="img-box">
                                    <img src="images/HP_laptop_under_30000__247_G8_Laptop__AMD_Athlon_P-3045B_HD__14_inches_35_5cm_-removebg-preview.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container ">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="detail-box">
                                    <h1>
                                        For All Your <br>
                                        Laptop Needs
                                    </h1>
                                    <p>
                                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Minus quidem maiores perspiciatis, illo maxime voluptatem a itaque suscipit.
                                    </p>
                                    <div class="btn-box">
                                        <a href="" class="btn1">
                                            Contact Us
                                        </a>
                                        <a href="" class="btn2">
                                            About Us
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="img-box">
                                    <img src="images/laptop-isolated-white-background-removebg-preview.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <ol class="carousel-indicators">
                <li data-target="#customCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#customCarousel" data-slide-to="1"></li>
                <li data-target="#customCarousel" data-slide-to="2"></li>
            </ol>
        </div>
    </section>
    <!-- end slider section -->
</div>




<!-- about section -->

<section class="about_section layout_padding long_section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="img-box">
                    <img src="images/Psd_laptop_transparent-removebg-preview.png" alt="">
                </div>
            </div>
            <div class="col-md-6">
                <div class="detail-box">
                    <div class="heading_container">
                        <h2>
                            About Us
                        </h2>
                    </div>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti dolorem eum consequuntur ipsam repellat dolor soluta aliquid laborum, eius odit consectetur vel quasi in quidem, eveniet ab est corporis tempore.
                    </p>
                    <a href="">
                        Read More
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- end about section -->

<!-- blog section -->

<section class="blog_section layout_padding">
    <div class="container">
        <div class="heading_container">
            <h2>
                Categories
            </h2>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-4 mx-auto">
                <div class="box">
                    <div class="img-box">
                        <img src="images/Acer_Nitro_17_Gaming_Laptop-removebg-preview.png" alt="">
                    </div>
                    <div class="detail-box">
                        <h5>
                            Gaming Lapttop
                        </h5>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias amet commodi consectetur excepturi itaque nesciunt odio, totam voluptas! Commodi dolores eveniet exercitationem maxime non odit similique ut voluptatum? Placeat, sapiente?
                        </p>
                        <a href="">
                            Read More
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 mx-auto">
                <div class="box">
                    <div class="img-box">
                        <img src="images/Samsung_launches_Galaxy_Book_Flex_5G__the_first_5G_Intel_Evo_laptop-removebg-preview.png" alt="">
                    </div>
                    <div class="detail-box">
                        <h5>
                            Note Book
                        </h5>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste provident quae quisquam sapiente soluta suscipit totam voluptates! Dolores ducimus eaque minus nam soluta. Aliquid commodi eos mollitia nobis quae ullam.
                        </p>
                        <a href="">
                            Read More
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 mx-auto">
                <div class="box">
                    <div class="img-box">
                        <img src="images/Psd_laptop_transparent-removebg-preview.png" alt="">
                    </div>
                    <div class="detail-box">
                        <h5>
                            Business Laptop
                        </h5>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam asperiores dicta dolore doloribus ea eaque eum eveniet id illum in ipsam iste maxime necessitatibus nemo, quas quasi quis quisquam tempora?
                        </p>
                        <a href="">
                            Read More
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- end blog section -->


<!-- contact section -->
<section class="contact_section  long_section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="form_container">
                    <div class="heading_container">
                        <h2>
                            Contact Us
                        </h2>
                    </div>
                    <form action="">
                        <div>
                            <input type="text" placeholder="Your Name" />
                        </div>
                        <div>
                            <input type="text" placeholder="Phone Number" />
                        </div>
                        <div>
                            <input type="email" placeholder="Email" />
                        </div>
                        <div>
                            <input type="text" class="message-box" placeholder="Message" />
                        </div>
                        <div class="btn_box">
                            <button>
                                SEND
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-6">
                <div class="map_container">
                    <div class="map">
                        <div id="googleMap"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end contact section -->

<!-- info section -->
<section class="info_section long_section">

    <div class="container">
        <div class="contact_nav">
            <a href="">
                <ion-icon name="call"></ion-icon>
                <span>
            Call : +94 701234567
          </span>
            </a>
            <a href="">
                <ion-icon name="mail-open-outline"></ion-icon>
                <span>
            Email : luxywatch@gmail.com
          </span>
            </a>
            <a href="">
                <ion-icon name="location"></ion-icon>
                <span>
            Sri Lanka
          </span>
            </a>
        </div>

        <div class="info_top ">
            <div class="row ">
                <div class="col-sm-6 col-md-4 col-lg-3">
                    <div class="info_links">
                        <h4>
                            QUICK LINKS
                        </h4>
                        <div class="info_links_menu">
                            <a class="" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                            <a class="" href="about.jsp"> About</a>
                            <a class="" href="item-all">Shop</a>
                            <a class="" href="category.jsp">Categories</a>
                            <a class="" href="contact.jsp">Contact Us</a>
                            <a class="" href="cart.jsp">Cart</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4 col-lg-3 mx-auto">

                </div>
                <div class="col-md-4">
                    <div class="info_form">
                        <h4>
                            SIGN UP TO OUR NEWSLETTER
                        </h4>
                        <form action="">
                            <input type="text" placeholder="Enter Your Email" />
                            <button type="submit">
                                Subscribe
                            </button>
                        </form>
                        <div class="social_box">
                            <a href="">
                                <ion-icon name="logo-facebook"></ion-icon>
                            </a>
                            <a href="">
                                <ion-icon name="logo-twitter"></ion-icon>
                            </a>
                            <a href="">
                                <ion-icon name="logo-linkedin"></ion-icon>
                            </a>
                            <a href="">
                                <ion-icon name="logo-instagram"></ion-icon>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end info_section -->


<!-- footer section -->
<footer class="footer_section">
    <div class="container">
        <p>
            &copy; <span id="displayYear"></span> All Rights Reserved By LaptopMart

        </p>
    </div>
</footer>
<!-- footer section -->


<!-- jQery -->
<script src="assets/jquery-3.7.1.min.js"></script>
<!-- bootstrap js -->
<script src="JS/bootstrap.js"></script>
<!-- custom js -->
<script src="JS/custom.js"></script>
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
<!-- End Google Map -->

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

</body>
</html>
