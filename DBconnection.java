package mary;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;



public class DBconnection {
 public Statement database() throws ClassNotFoundException, SQLException {
	 
	 Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection cc = DriverManager.getConnection("jdbc:mysql://localhost:3306/makenterprise","root","");
	  
	  Statement st = cc.createStatement();
			  
	 return st;
	 
 }
}
