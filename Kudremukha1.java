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
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Kudremukha1")
public class Kudremukha1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String url = System.getenv("DATABASE_URL");
	 String un = System.getenv("DATABASE_USER");
	 String pw = System.getenv("DATABASE_PASSWORD");
	Connection con = null;
	String query  = "select * from Kudremukha where registration_Id = ? ";
	PreparedStatement pstmt = null ;
	
	@Override
	public void init() throws ServletException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url,un,pw);
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String regid = req.getParameter("fn");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, regid);
			ResultSet res = pstmt.executeQuery();
			
			PrintWriter out = resp.getWriter();
            out.println("<html>");
            out.println("<head><title>Results</title>");
            out.println("<style>");
            out.println("body {font-family: Arial, sans-serif; background-color: #f4f4f4; color: #333; margin: 0; padding: 20px;background-image: url('nethra1.jpg'); background-size: cover; background-repeat: no-repeat;background-position: center;min-height: 100vh;}");
            out.println(".container {max-width: 600px; margin: 0 auto; background-color: #fff; padding: 20px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);}");
            out.println("h2 {color: #2c3e50; margin-bottom: 20px;}");
            out.println("p {margin: 10px 0; font-size: 16px;}");
            out.println(".no-record {color: #e74c3c; font-weight: bold;}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class=\"container\">");

            if (res.next()) {
                out.println("<h2>Details of Trekker: </h2>");
                out.println("<p><strong>Name:</strong> " + res.getString(2) + "</p>");
                out.println("<p><strong>Gender:</strong> " + res.getString(3) + "</p>");
                out.println("<p><strong>Phone Number:</strong> " + res.getString(5) + "</p>");
                out.println("<p><strong>Email Id:</strong> " + res.getString(6) + "</p>");
                out.println("<p><strong>Address:</strong> " + res.getString(7) + "</p>");
                out.println("<p><strong>State:</strong> " + res.getString(8) + "</p>");
                out.println("<p><strong>Reservation Date:</strong> " + res.getString(10) + "</p>");
                out.println("<p><strong>Reservation Slot:</strong> " + res.getString(11) + "</p>");
                out.println("<p><strong>Registration Id:</strong> " + res.getString(12) + "</p>");
            } else {
                out.println("<p class=\"no-record\">Records not found on this Registration Id: " + regid + "</p>");
            }

            out.println("</div>");
            out.println("</body>");
            out.println("</html>");

            res.close(); // Close the ResultSet
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void destroy() {
		try {
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}