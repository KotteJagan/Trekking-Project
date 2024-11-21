package com.trek;

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

@WebServlet("/Kodachadri2")
public class Kodachadri2 extends HttpServlet {
	 private static final long serialVersionUID = 1L;
	 String url = System.getenv("DATABASE_URL");
	 String un = System.getenv("DATABASE_USER");
	 String pw = System.getenv("DATABASE_PASSWORD");
	    private Connection con = null;
	    private PreparedStatement pstmt = null;
	    private String query = "delete from Kodachadri where registration_id = ?";

	    @Override
	    public void init() throws ServletException {
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection(url, un, pw);
	        } catch (ClassNotFoundException | SQLException e) {
	            throw new ServletException("Error initializing servlet", e);
	        }
	    }

	    @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        String regid = req.getParameter("pn");
	        PrintWriter out = resp.getWriter();

	        try {
	            pstmt = con.prepareStatement(query);
	            pstmt.setString(1, regid);
	            int rowsAffected = pstmt.executeUpdate();

	            resp.setContentType("text/html");
	            out.println("<html><head><title>Results</title>");
	            out.println("<style>");
	            out.println("body {font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; margin: 0; padding: 20px;background-image: url('nethra1.jpg'); background-size: cover; background-repeat: no-repeat;background-position: center;min-height: 100vh;}");
	            out.println(".container {max-width: 600px; margin: 0 auto; background-color: #fff; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);}");
	            out.println("h2 {color: #2c3e50; margin-bottom: 20px;}");
	            out.println("p {margin: 10px 0; font-size: 16px;}");
	            out.println(".no-record {color: #e74c3c; font-weight: bold;}");
	            out.println("</style>");
	            out.println("</head><body>");
	            out.println("<div class=\"container\">");

	            if (rowsAffected > 0) {
	                out.println("<h2>Registration cancelled successfully </h2>");
	                out.println("<h2>Thank you</h2>");
	            } else {
	                out.println("<p class=\"no-record\">No records found on this Registration Id: " + regid + "</p>");
	            }

	            out.println("</div></body></html>");
	        } catch (SQLException e) {
	            throw new ServletException("Error executing SQL query", e);
	        } finally {
	            try {
	                if (pstmt != null) pstmt.close();
	                if (con != null) con.close();
	            } catch (SQLException e) {
	                throw new ServletException("Error closing resources", e);
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
