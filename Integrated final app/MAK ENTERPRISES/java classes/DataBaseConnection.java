/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myClasses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ROMAN
 */
public class DataBaseConnection {

    /**
     *
     */
    public  Connection conn1;
    
    public  Connection CreateDBconnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataBaseConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    
        try {
            String url = "jdbc:mysql://localhost:3306/mak_enterprises";
            String user = "root";
            String password = "";
 
            conn1 = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            System.out.println("An error occurred. Maybe user/password is invalid");
        } 
        return conn1;
    }
}
