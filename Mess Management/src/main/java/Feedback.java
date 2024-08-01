

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class feedback
 */
@MultipartConfig
@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedback() {
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
		System.out.println("Inside PoST");
		Part file=request.getPart("img");
		
//		String imageFileName=file.getSubmittedFileName();
//		System.out.println(imageFileName);
		/*
		 * String image=request.getParameter("img"); System.out.println(image);
		 */
//			 
//		String uploadPath="C:/Users/PC/eclipse-workspace/project1/src/main/webapp/images/"+ imageFileName;
//		System.out.println(uploadPath);
		
		try{
			System.out.println("Hello");
//			 FileOutputStream fos=new FileOutputStream(uploadPath);
			 InputStream is=file.getInputStream();
			 
			 byte[] data=new byte[is.available()];
			 is.read(data);
//			 fos.write(data);
//			 fos.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		try {
			
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mess","root","mysql");
			
		
		String name=request.getParameter("name");
		String item=request.getParameter("item");
		String day=request.getParameter("day");
		String feedback=request.getParameter("feedback");
		
		PreparedStatement s=c.prepareStatement("insert into Mess.Feedback values(null,?,?,?,?)");
		System.out.println("Heeeeloooooo");
		s.setString(1, name);
		s.setString(2, item);
		s.setString(3, day);
		s.setString(4, feedback);
		s.executeUpdate();  
//		out.println("<font color:red size=10>Registered Successfully !!<br>");
//		out.println("<a href=../login/login.jsp>Login Here!!!</a>");
		response.sendRedirect( "Feedback.jsp?msg=Feedback submitted successfully !!" );
 
}
		 
		catch (ClassNotFoundException e) {
			System.out.println("in the SQL1");
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		catch (SQLException e) {
			System.out.println("in the SQL2");
			// TODO Auto-generated catch block
			e.printStackTrace();
			/*
			 * request.setAttribute("name", "User Already Exist");
			 * 
			 * request.getRequestDispatcher("register.jsp").forward(request, response);
			 */
			response.sendRedirect( "Feedback.jsp?msg=Data is Not Entered !!" ); 
			
			
		}
		
}
}