<%@ page import="lk.ijse.aadassignment1ecommerce.DTO.ItemDTO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 1/21/2025
  Time: 7:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LaptopMart</title>

    <style>
        table{
            border-collapse: collapse;
            width: 90%;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>

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
            <a class="navbar-brand" href="adminHome.jsp">
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
                        <li class="nav-item">
                            <a class="nav-link" href="adminHome.jsp">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="Item">Items</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Categories">Categories</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="user">Users</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="adminOrders.jsp">Orders</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Log Out</a>
                        </li>
                    </ul>
                </div>
                <div class="quote_btn-container">
                    <%--                    <a href="">--%>
                    <%--              <span>--%>
                    <%--                Log Out--%>
                    <%--              </span>--%>
                    <%--                        <i class="fa fa-user" aria-hidden="true"></i>--%>
                    <%--                    </a>--%>
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
</div>

<div class="m-5"><h4>Add Item</h4></div>

<%
    String message = (String) session.getAttribute("message");
    String alertType = (String) session.getAttribute("alertType");
    if (message != null && alertType != null) {
%>
<script>
    alert('<%= message %>');
</script>
<%
        // Clear the session attributes after displaying the alert
        session.removeAttribute("message");
        session.removeAttribute("alertType");
    }
%>

<form action="Item" method="post" class="row g-3 m-5" >
    <div class="col-md-4">
        <label for="itemName" class="form-label">Item Name</label>
        <input type="text" name="itemName" class="form-control" id="itemName">
    </div>
    <div class="col-md-4">
        <label for="itemDesc" class="form-label">Description</label>
        <input type="text" name="itemDesc" class="form-control" id="itemDesc">
    </div>
    <div class="col-md-4">
        <label for="itemImg" class="form-label">Image</label>
        <input type="file" name="url" class="form-control" id="itemImg" accept="image/*">
    </div>
    <div class="col-md-4">
        <label for="price" class="form-label">Price</label>
        <input type="text" name="price" class="form-control" id="price">
    </div>
    <div class="col-md-4">
        <label for="stock" class="form-label">Stock</label>
        <input type="number" name="stock" class="form-control" id="stock">
    </div>
    <div class="col-md-4">
        <label for="categoryId" class="form-label">Category Id</label>
        <input type="text" name="categoryId" class="form-control" id="categoryId">
    </div>
    <div class="col-12">
        <button type="submit" class="btn btn-primary mt-3">Save</button>
        <button type="submit" class="btn btn-primary mt-3">Update</button>
        <button type="danger" class="btn btn-primary mt-3">Delete</button>
    </div>
</form>


<h3 class="m-5">Items list</h3>

<%--<%--%>
<%--    List<ItemDTO> itemList = (List<ItemDTO>) request.getAttribute("items");--%>
<%--    if(itemList != null && !itemList.isEmpty()) {--%>

<%--%>--%>
<%--<table class="m-5">--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th>ID</th>--%>
<%--        <th>Name</th>--%>
<%--        <th>Description</th>--%>
<%--        <th>Price</th>--%>
<%--        <th>Stock</th>--%>
<%--        <th>Category ID</th>--%>
<%--        <th>Image</th>--%>
<%--        <th>Action</th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <%--%>
<%--        for (ItemDTO item : itemList) {--%>
<%--    %>--%>
<%--    <tr>--%>
<%--        <td><%= item.getId() %></td>--%>
<%--        <td><%= item.getName() %></td>--%>
<%--        <td><%= item.getDescription() %></td>--%>
<%--        <td><%= item.getPrice() %></td>--%>
<%--        <td><%= item.getStock() %></td>--%>
<%--        <td><%= item.getCategoryId() %></td>--%>
<%--&lt;%&ndash;        <td><%= item.getUrl() %></td>&ndash;%&gt;--%>
<%--        <td>--%>
<%--            <img src="./assets/images/<%= item.getUrl() %>" alt="<%= item.getName() %>" width="100" height="100">--%>
<%--        </td>--%>

<%--        <td>--%>
<%--            <form action="Item" method="post">--%>
<%--                <input type="hidden" name="action" value="delete">--%>
<%--                <input type="hidden" name="i    temId" value="<%= item.getId() %>">--%>
<%--                <button type="submit" class="btn btn-danger">--%>
<%--                    <ion-icon name="trash"></ion-icon>--%>
<%--                </button>--%>
<%--            </form>--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--        }--%>
<%--    %>--%>
<%--    </tbody>--%>
<%--</table>--%>

<table class="m-5">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Category ID</th>
        <th>Image</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<ItemDTO> itemList = (List<ItemDTO>) request.getAttribute("items");
        System.out.println("itemList: " + itemList);
        if (itemList != null) {
            for (ItemDTO item : itemList) {
    %>
    <tr>
        <td><%= item.getId() %></td>
        <td><%= item.getName() %></td>
        <td><%= item.getDescription() %></td>
        <td><%= item.getPrice() %></td>
        <td><%= item.getCategoryId() %></td>
        <td><%= item.getStock() %></td>
        <td>
            <img src="./assets/images/<%= item.getUrl() %>" alt="<%= item.getName() %>" width="100" height="100">
        </td>
        <td>
            <form action="Item" method="post">
                <input type="hidden" name="action" value="delete">
                <input type="hidden" name="itemId" value="<%= item.getId() %>">
                <button type="submit" class="btn btn-danger">
                    <ion-icon name="trash"></ion-icon>
                </button>
            </form>
        </td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>

<%

%>





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
