<%@ page import="lk.ijse.aadassignment1ecommerce.DTO.ItemDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/20/2025
  Time: 9:20 AM
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

  <link href="CSS/shop.css" rel="stylesheet">
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

            <li class="nav-item active">
              <a class="nav-link" href="shop.jsp">Shop</a>
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
<%--          <a href="index.jsp">--%>
<%--              <span>--%>
<%--                Log Out--%>
<%--              </span>--%>
<%--            <i class="fa fa-user" aria-hidden="true"></i>--%>
<%--          </a>--%>
          <form class="form-inline">
<%--            <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">--%>
<%--              <i class="fa fa-search" aria-hidden="true"></i>--%>
<%--            </button>--%>
          </form>
        </div>
      </div>
    </nav>
  </header>
  <!-- end header section -->
</div>

<!-- furniture section -->

<section class="furniture_section layout_padding">
  <div class="container">
    <div class="heading_container">
      <h2>
        Pear-Watch Products
      </h2>
      <p>
        which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't an
      </p>
    </div>


    <ul class="product-list">
      <%
        List<ItemDTO> itemList = (List<ItemDTO>) request.getAttribute("itemDTOList");
        System.out.println("item list nullda");
        System.out.println(itemList==null);
        if (itemList != null && !itemList.isEmpty()) {
          System.out.println(itemList+"jsp");

      %>

      <%
        for (ItemDTO item : itemList) {

      %>
      <li class="product-item">
        <div class="product-card" tabindex="0">

          <figure class="card-banner">
            <img src="./images/<%=item.getUrl()%>" width="322" height="350" loading="lazy"
                 alt="LaptopMart" class="image-contain">

            <ul class="card-action-list">

              <li class="card-action-item">
                <button class="card-action-btn" aria-labelledby="card-label-1">
                  <ion-icon name="cart-outline"></ion-icon>
                </button>

                <div class="card-action-tooltip" id="card-label-1">Add to Cart</div>
              </li>


            </ul>
          </figure>

          <div class="card-content">

            <div class="card-cat">
              <a href="#" class="card-cat-link"><%=item.getDescription()%></a>
            </div>

            <h3 class="h3 card-title">
              <a href="#"><%=item.getName()%></a>
            </h3>

            <data class="card-price" value="100.85"><%=item.getPrice()%></data>

          </div>

        </div>
      </li>
      <%
        }

      %>
      <%
      } else {
      %>
      <p>No products found.</p>
      <%
        }
      %>

    </ul>

  </div>
</section>

<!-- end furniture section -->



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
