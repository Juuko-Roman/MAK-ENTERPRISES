package com.Clinton;

import java.sql.*;


public class dbConnection{
    private static Connection con;
    public String email1,password1;
    
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/MAK_ENTERPRISES","root","");
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
    
    public Statement database() throws ClassNotFoundException, SQLException {
   	 
   	 Class.forName("com.mysql.cj.jdbc.Driver");
   	  Connection cc = DriverManager.getConnection("jdbc:mysql://localhost:3306/mak_enterprises","root","");
   	  
   	  Statement st = cc.createStatement();
   			  
   	 return st;
    }
    
    public boolean login(String email, String password) {
    	Connection connect = getConnection();
    	try {
			Statement statement = connect.createStatement();
			String sql = "select password from manager where email = '"+email+"'";
			ResultSet resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				password1 = resultSet.getString("password");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return email.equalsIgnoreCase(email) && password.equalsIgnoreCase(password1);
	}
}

