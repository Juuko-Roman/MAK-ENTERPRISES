package staff;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import mary.DBconnection;



public class Staff extends HttpServlet {       
   
   
    @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 try ( PrintWriter out = response.getWriter()) {
                     
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet mine2</title>");            
            out.println("</head>");
            out.println("<body>");
            
		String name = request.getParameter("Name");
		String location = request.getParameter("Location");
                String Category = request.getParameter("Cat");
		String Contact = request.getParameter("Contact");
		String Gender = request.getParameter("gender");
                if(Gender.contentEquals("option1")) {
			Gender="Female";
		} else {
			Gender="Male";
		}
                try{
   Class.forName("com.mysql.jdbc.Driver");
   try{
 Connection co=   DriverManager.getConnection("jdbc:mysql://localhost:3306/makenterprise", "root", "");
Statement st= co.createStatement();
st.executeUpdate("insert into employee set name= '"+name+"'lLocation= '"+location+"',Category= '"+Category+"',Contact= '"+Contact+"',Gender= '"+Gender+"' ");
      out.println("Successfully allocated click<a href ='/mine/View'> View allocation</a>");
   }catch(SQLException e){
    out.println("error:"+ e.getMessage());
}
}catch(ClassNotFoundException e){
    out.println("error:"+ e.getMessage());
}
		
            out.println("</body>");
            out.println("</html>");
        }
		
		
		
		
		
					

			//to display the successful result
			//out.println("<html><body><b>Successfully Inserted "+</b></body></html>" );
			
				
					
			request.getRequestDispatcher("EmployedStaff.jsp").forward(request, response);
			
					
		}
		
	
		
		
}

	
	


