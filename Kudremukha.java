package com.trek;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.UUID;

@WebServlet("/Kudremukha")
public class Kudremukha extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = System.getenv("DATABASE_URL");
	 String un = System.getenv("DATABASE_USER");
	 String pw = System.getenv("DATABASE_PASSWORD");
    Connection con = null;
    PreparedStatement pstmt = null;
    String query  = "insert into Kudremukha  values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
   
   

    public void init(ServletConfig config) throws ServletException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, un, pw);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            throw new ServletException("Initialization failed", e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fname = req.getParameter("fn");
        String lname = req.getParameter("ln");
        String gender = req.getParameter("gender");
        String aadhar = req.getParameter("an");
        String phone = req.getParameter("pn");
        String email = req.getParameter("em");
        String address = req.getParameter("ad");
        String state = req.getParameter("st");
        int pin = Integer.parseInt(req.getParameter("pin"));
        String resvdate = LocalDate.now().toString();
        String resvslot = req.getParameter("dat");

        // Generate a unique ID
        String registrationId = UUID.randomUUID().toString().replaceAll("-", "").substring(0, 10);

        try {
            pstmt = con.prepareStatement(query);
           
            pstmt.setString(1, fname);
            pstmt.setString(2, lname);
            pstmt.setString(3, gender);
            pstmt.setString(4, aadhar);
            pstmt.setString(5, phone);
            pstmt.setString(6, email);
            pstmt.setString(7, address);
            pstmt.setString(8, state);
            pstmt.setInt(9, pin);
            pstmt.setString(10, resvdate);
            pstmt.setString(11, resvslot);
            pstmt.setString(12, registrationId);

            int res = pstmt.executeUpdate();

            resp.setContentType("text/html");
            PrintWriter out = resp.getWriter();
            out.println("<html>");
            out.println("<head><title>Results</title>");
            out.println("<style>");
            out.println("body {font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; margin: 0; padding: 20px;}");
            out.println(".container {max-width: 600px; margin: 0 auto; background-color: #fff; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);}");
            out.println("body {font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; margin: 0; padding: 20px;background-image: url('nethra1.jpg'); background-size: cover; background-repeat: no-repeat;background-position: center;min-height: 100vh;}");
           
            out.println("h2 {color: #2c3e50; margin-bottom: 20px;}");
            out.println("p {margin: 10px 0; font-size: 16px;}");
            out.println(".no-record {color: #e74c3c; font-weight: bold;}");
            out.println(".print-button {margin-top: 20px; padding: 10px 20px; background-color: #4CAF50; color: white; border: none; cursor: pointer; font-size: 16px;}");
            out.println(".print-button:hover {background-color: #45a049;}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class=\"container\">");

            if (res > 0) {
                out.println("<h2>Registration Successful</h2>");
                out.println("<p><strong>Registration ID:</strong> " + registrationId + "</p>");
                out.println("<p><strong>First Name:</strong> " + fname + "</p>");
                out.println("<p><strong>Last Name:</strong> " + lname + "</p>");
                out.println("<p><strong>Gender:</strong> " + gender + "</p>");
                out.println("<p><strong>Aadhar Number:</strong> " + aadhar + "</p>");
                out.println("<p><strong>Phone Number:</strong> " + phone + "</p>");
                out.println("<p><strong>Email Id:</strong> " + email + "</p>");
                out.println("<p><strong>Address:</strong> " + address + "</p>");
                out.println("<p><strong>State:</strong> " + state + "</p>");
                out.println("<p><strong>Pincode:</strong> " + pin + "</p>");
                out.println("<p><strong>Reservation Date:</strong> " + resvdate + "</p>");
                out.println("<p><strong>Reservation Slot:</strong> " + resvslot + "</p>");
                out.println("<button class=\"print-button\" onclick=\"window.print();\">Print</button>");
            } else {
                out.println("<p class=\"no-record\">Registration failed. Please try again.</p>");
            }

            out.println("</div>");
            out.println("</body>");
            out.println("</html>");

        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Error executing SQL query", e);
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void destroy() {
        try {
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
