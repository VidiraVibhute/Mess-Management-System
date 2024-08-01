
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mess","root","mysql");
			
		
		String name=request.getParameter("uname");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		PreparedStatement s=c.prepareStatement("insert into Mess.register values(null,?,?,?,?,?)");
		s.setString(1, name);
		s.setString(2, address);
		s.setString(3,phone);
		s.setString(4, email);
		s.setString(5, password);
		s.executeUpdate();
		response.sendRedirect("login.jsp");  
//		out.println("<font color:red size=10>Registered Successfully !!<br>");
//		out.println("<a href=../login/login.jsp>Login Here!!!</a>");
}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			/*
			 * request.setAttribute("name", "User Already Exist");
			 * 
			 * request.getRequestDispatcher("register.jsp").forward(request, response);
			 */
			response.sendRedirect( "register.jsp?msg=User Already Exist !!" );
			PrintWriter out=response.getWriter();
			out.println("Data Not Entered");
		}
}
}
