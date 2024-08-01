

import java.io.*;
//import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/LoginServlet")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		try {
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mess","root","mysql");
			String n=request.getParameter("name");
			String p=request.getParameter("pass");
			
			PreparedStatement s=c.prepareStatement("select name from mess.register where phone=? and password=?");
			s.setString(1, n);
			s.setString(2, p);
			ResultSet rs=s.executeQuery();
			PreparedStatement s1=c.prepareStatement("select * from mess.admincred where userid=? and password=?");
			s1.setString(1, n);
			s1.setString(2, p);
			ResultSet rs1=s1.executeQuery();
			if(rs.next()) {
				response.sendRedirect("home1.jsp");
			}
			else if(rs1.next()) {
				response.sendRedirect("adminhome.jsp");
			}
			
			else {
				response.sendRedirect( "login.jsp?msg=Username Password is Not correct !!" );
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
	}

}
