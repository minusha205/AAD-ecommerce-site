package lk.ijse.aadassignment1ecommerce;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.aadassignment1ecommerce.DTO.UserDTO;


import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/user-login")
public class LoginServlet extends HttpServlet {

    @Resource(name = "java:comp/env/jdbc/pool")
    private DataSource dataSource;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserDTO userDTO = new UserDTO();
        userDTO.setEmail(email);
        userDTO.setPassword(password);

        try (Connection connection = dataSource.getConnection()) {
            // SQL query to check if the user exists with the given email
            String sql = "SELECT * FROM users WHERE email = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, userDTO.getEmail());

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        // Email found, now check if password matches
                        String storedPassword = resultSet.getString("password_hash");
//                        String status = resultSet.getString("status");
                        String role = resultSet.getString("role");

                        // Check if password matches and the user is active
                        if (storedPassword.equals(userDTO.getPassword())) {  // If passwords are stored in plaintext
                                userDTO.setName(resultSet.getString("username"));
                                userDTO.setRole(role);
                                req.getSession().setAttribute("user", userDTO);
                                if ("Admin".equalsIgnoreCase(role)) {
                                    req.setAttribute("message", "Login Success! Welcome, Admin.");
                                    req.getRequestDispatcher("adminHome.jsp").forward(req, resp);
                                } else  {
                                    req.setAttribute("message", "Login Success! Welcome, Customer.");
                                    req.getRequestDispatcher("home.jsp").forward(req, resp);
                                }
                        } else {
                            req.setAttribute("message", "Login Failed! Incorrect password.");
                            req.getRequestDispatcher("index.jsp").forward(req, resp);
                        }
                    } else {
                        // Email not found
                        req.setAttribute("message", "Login Failed! Email not found.");
                        req.getRequestDispatcher("index.jsp").forward(req, resp);  // Redirect back to login page
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            req.setAttribute("message", "An error occurred: " + e.getMessage());
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
    }
}