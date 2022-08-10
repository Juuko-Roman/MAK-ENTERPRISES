package com.Clinton;

import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import java.sql.ResultSet;
import java.sql.Statement;

public class employee extends SimpleTagSupport {
	public final int allocationRatio = 7;
	public int shortTermStaff,mediumTermStaff,longTermStaff;
	int numberofstaff=0;
    String Category;
       public void doTag(){
		JspWriter out = getJspContext().getOut();
		

		try {
			dbConnection con = new dbConnection();
			Statement st = con.database();
			
			ResultSet staffNumber = st.executeQuery("Select count(*) from employee");
			
			while (staffNumber.next()) {
				numberofstaff=staffNumber.getInt(1);
			}
			
			shortTermStaff = (1*numberofstaff)/7;
			mediumTermStaff = (2*numberofstaff)/7;
			longTermStaff = (4*numberofstaff)/7;
			
			
			
			for(int i = 12; i < shortTermStaff+12; i++) {
				st.executeUpdate("update employee set Category = 'Short Term' where id='"+i+"'");
				
				}
			
            for(int i = shortTermStaff+12; i < mediumTermStaff+shortTermStaff+12; i++) {
				st.executeUpdate("update employee set Category = 'medium Term' where id='"+i+"'");
				
				}
            
            for(int i = mediumTermStaff+shortTermStaff+12; i <= mediumTermStaff+shortTermStaff+mediumTermStaff+shortTermStaff+13; i++) {
				
				st.executeUpdate("update employee set Category = 'long Term' where id='"+i+"'");
				}
				
			
			
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		} 
}
}


