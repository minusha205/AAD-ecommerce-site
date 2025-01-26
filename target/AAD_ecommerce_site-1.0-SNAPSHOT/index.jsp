<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>E-commerce Login & Registration</title>
<%--  <link href="CSS/login.css" type="text/css" rel="stylesheet">--%>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
      color: #a1b75b;
    }

    body {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      background-image: url('images/pexels-cottonbro-3944423.jpg'); /* Path to your image */
      background-repeat: no-repeat; /* Prevent repeating of the image */
      background-position: center center; /* Center the image */
      background-size: cover; /* Ensure the image covers the entire background */
      background-attachment: fixed; /* Make the background image fixed when scrolling */
    }

    .container {
      position: relative;
      width: 100%;
      max-width: 750px;
      height: 480px;
      border-radius: 10px;
      overflow: hidden;
      background-color: #ffffffeb;
      display: flex;
      flex-wrap: wrap;
      flex-direction: row;
      /*opacity: 50%;*/
    }

    .container .form-box {
      position: absolute;
      top: 0;
      width: 50%;
      height: 100%;
      display: flex;
      justify-content: center;
      flex-direction: column;
      padding: 20px 40px;
      transition: 0.6s ease-in-out;

    }

    .form-box.Login {
      left: 0;
    }

    .form-box.Register {
      right: 0;
      transform: translateX(100%);
      opacity: 0;
    }

    .container.active .form-box.Login {
      transform: translateX(-100%);
      opacity: 0;
    }

    .container.active .form-box.Register {
      transform: translateX(0);
      opacity: 1;
    }

    .form-box h2 {
      font-size: 28px;
      text-align: center;
      color: #a1b75b;
      margin-bottom: 20px;
    }

    .container.active .form-box h2 {
      color: #a1b75b;
    }

    .form-box .input-box {
      position: relative;
      width: 100%;
      height: 50px;
      margin-bottom: 20px;
    }

    .input-box input,
    .input-box select {
      width: 100%;
      height: 50px;
      padding-left: 10px;
      background: transparent;
      border: 1px solid #ccc;
      outline: none;
      font-size: 16px;
      color: #333;
      border-radius: 4px;
      transition: 0.5s;
    }

    .input-box input:focus,
    .input-box select:focus {
      border-color: #a1b75b;
    }

    .container.active .input-box input:focus,
    .container.active .input-box select:focus {
      border-color: #a1b75b;
    }

    .input-box label {
      position: absolute;
      top: 50%;
      left: 10px;
      transform: translateY(-50%);
      font-size: 16px;
      color: #aaa;
      pointer-events: none;
      transition: 0.5s;
    }

    .input-box input:focus + label,
    .input-box input:not(:placeholder-shown) + label,
    .input-box select:focus + label,
    .input-box select:not(:placeholder-shown) + label {
      top: -10px;
      font-size: 12px;
      color: #a1b75b;
    }

    .container.active .input-box input:focus + label,
    .container.active .input-box input:not(:placeholder-shown) + label,
    .container.active .input-box select:focus + label,
    .container.active .input-box select:not(:placeholder-shown) + label {
      color: #a1b75b;
    }

    .btn {
      width: 100%;
      height: 45px;
      background: #a1b75b;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
      font-weight: 600;
      transition: background-color 0.3s;
    }

    .btn:hover {
      background-color: #a1b75b;
      border-color: #a1b75b;
    }

    .container.active .btn {
      background: #a1b75b;
    }

    .container.active .btn:hover {
      background-color: #a1b75b;
      border-color: #a1b75b;
    }

    .regi-link {
      font-size: 14px;
      text-align: center;
      margin: 10px 0;
    }

    .regi-link a {
      text-decoration: none;
      color: #a1b75b;
      font-weight: 600;
    }

    .container.active .regi-link a {
      color: #a1b75b;
    }

    .regi-link a:hover {
      text-decoration: underline;
    }

    .ecommerce-text {
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      font-size: 32px;
      font-weight: bold;
      color: #a1b75b;
      text-align: center;
      width: 50%;
      z-index: 1;
      transition: 0.6s ease-in-out;
    }

    .ecommerce-text.login {
      left: 75%;
      transform: translateX(-50%) translateY(-50%);
    }

    .ecommerce-text.register {
      right: 50%;
      transform: translateX(50%) translateY(-50%);
    }

    .container.active .ecommerce-text.login {
      color: #a1b75b;
      left: 25%;
    }

    .container.active .ecommerce-text.register {
      right: 75%;
    }

    @media (max-width: 768px) {
      .container {
        width: 90%;
        height: auto;
        flex-direction: column;
      }

      .form-box {
        width: 100%;
        height: auto;
        padding: 20px;
      }

      .ecommerce-text {
        font-size: 24px;
        width: 100%;
        left: 50%;
        transform: translateX(-50%) translateY(-50%);
      }

      .input-box input,
      .input-box select {
        font-size: 14px;
        height: 40px;
      }

      .btn {
        height: 40px;
        font-size: 14px;
      }
    }

    @media (max-width: 480px) {
      .ecommerce-text {
        font-size: 20px;
      }

      .form-box h2 {
        font-size: 24px;
      }

      .input-box input,
      .input-box select {
        font-size: 14px;
        height: 40px;
      }

      .btn {
        height: 40px;
        font-size: 14px;
      }

      .regi-link a {
        font-size: 12px;
      }
    }
  </style>
</head>

<body>
<div class="container">
  <div class="ecommerce-text login">WELLCOME TO LAPTOP MART</div>

  <div id="login-form" class="form-box Login">
    <h2>Login</h2>
    <form action="user-login" method="post">
      <div class="input-box">
        <input type="email" id="login-email" name="email" required />
        <label for="login-email">Email</label>
      </div>
      <div class="input-box">
        <input type="password" id="login-password" name="password" required />
        <label for="login-password">Password</label>
      </div>
      <button type="submit" class="btn">Login</button>
      <p class="regi-link">
        Don't have an account? <a href="#" onclick="showRegister()">Register</a>
      </p>
    </form>
  </div>

  <div id="register-form" class="form-box Register">
    <h2>Register</h2>
    <form action="user-register" method="post">
      <div class="input-box">
        <input type="text" id="register-name" name="name" required />
        <label for="register-name">Full Name</label>
      </div>
      <div class="input-box">
        <input type="email" id="register-email" name="email" required />
        <label for="register-email">Email</label>
      </div>
      <div class="input-box">
        <input type="password" id="register-password" name="password" required />
        <label for="register-password">Password</label>
      </div>

      <div class="input-box">
        <select id="register-role" name="role" required>
          <option value="Customer" selected>Customer</option>
          <option value="Admin">Admin</option>
        </select>
        <label for="register-role">Role</label>
      </div>

      <input type="hidden" name="status" value="Active" />

      <button type="submit" class="btn">Register</button>
      <p class="regi-link">
        Already have an account? <a href="#" onclick="showLogin()">Login</a>
      </p>
    </form>
  </div>
</div>

<%-- Check if there is a message set by the servlet and display an alert --%>
<%
  String message = (String) request.getAttribute("message");
  if (message != null) {
%>
<script type="text/javascript">
  alert("<%= message %>");
</script>
<%
  }
%>

<script>
  function showRegister() {
    const container = document.querySelector(".container");
    const body = document.body;
    container.classList.add("active");
    // body.style.backgroundColor = "#ff6347";
  }

  function showLogin() {
    const container = document.querySelector(".container");
    const body = document.body;
    container.classList.remove("active");
    // body.style.backgroundColor = "#28a745";
  }
</script>
</body>
</html>
