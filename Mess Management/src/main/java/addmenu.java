

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
 * Servlet implementation class addmenu
 */
@MultipartConfig
@WebServlet("/addmenu")
public class addmenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addmenu() {
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
		
		String imageFileName=file.getSubmittedFileName();
		System.out.println(imageFileName);
		/*
		 * String image=request.getParameter("img"); System.out.println(image);
		 */
			 
		String uploadPath="C:/Users/PC/eclipse-workspace/project1/src/main/webapp/images/"+ imageFileName;
		System.out.println(uploadPath);
		
		try{
			System.out.println("Hello");
			 FileOutputStream fos=new FileOutputStream(uploadPath);
			 InputStream is=file.getInputStream();
			 
			 byte[] data=new byte[is.available()];
			 is.read(data);
			 fos.write(data);
			 fos.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		try {
			
			PrintWriter out=response.getWriter();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mess","root","mysql");
			
		
		String meal=request.getParameter("meal");
		String item=request.getParameter("item");
		String rate=request.getParameter("rate");
		String quantity=request.getParameter("quantity");
		String day=request.getParameter("day");
		String time=request.getParameter("time");
		String img=imageFileName;
		
		PreparedStatement s=c.prepareStatement("insert into Mess.MenuMaster values(null,?,?,?,?,?,?,?)");
		System.out.println("Heeeeloooooo");
		s.setString(1, meal);
		s.setString(2, item);
		s.setString(3,quantity);
		s.setString(4, rate);
		s.setString(5, day);
		s.setString(6, time);
		s.setString(7, img);
		s.executeUpdate();  
//		out.println("<font color:red size=10>Registered Successfully !!<br>");
//		out.println("<a href=../login/login.jsp>Login Here!!!</a>");
		response.sendRedirect("addmenu.jsp");  
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
			response.sendRedirect( "addmenu.jsp?msg=Data is Not Entered !!" ); 
			
			
		}
		
}
}