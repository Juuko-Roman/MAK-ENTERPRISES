<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.SessionAndCookies.LoginSession1" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CUSTOMER STATISTICS</title>
</head>
<body>
<style type="text/css">
body{
	background:#8F9aa5;
}
table,
	th,
		td{
	border: 1px solid black;
	border-collapse: collapse;
	padding:5px;
}
tr:nth-child(odd){
	background-color:#2f3542;
}
</style>
<%
try{
//	if (session.getAttribute("email") != null && session.getAttribute("email") != "") {
		Connection con = LoginSession1.getCon();
		Statement st = con.createStatement();
		ResultSet r1 = st.executeQuery("select products.productName from products CROSS JOIN orders WHERE products.id=orders.productId;");
		int checker=0;
		while(r1.next()){
			checker++;
		}
		String[] produ = new String[checker];
		String[] loca = new String[checker];
		String[] gender=new String[checker];
		ResultSet r2 =st.executeQuery("select products.productName from products CROSS JOIN orders WHERE products.id=orders.productId;");
		int prod = 0;
		while(r2.next()){
			produ[prod] = r2.getString("productName"); 
			prod++;
		}
		ResultSet r3 =st.executeQuery("select customers.location, customers.gender from customers cross join orders where customers.id=orders.customerId;");
		prod = 0;
		while(r3.next()){
			loca[prod] = r3.getString("location");
			gender[prod] = r3.getString("gender");
			prod++;
		}
		ArrayList<String> products = new ArrayList<>();
		ArrayList<String> location = new ArrayList<>();
		ArrayList<String> genderr = new ArrayList<>();
		ArrayList<Integer> likesL = new ArrayList<>();
		ArrayList<Integer> likesG = new ArrayList<>();
//		ArrayList<Double> locationPercent = new ArrayList<>();
//		ArrayList<Double> genderPercent = new ArrayList<>();
		for(int i=0;i<prod;i++){
			int count = 1;
			for(int j=1;j<prod;j++){
				if(j>=i){
					if(produ[i].equals(produ[j])&&loca[i].equals(loca[j])){
						count++;
						}
				}
			}
			count=1;
			likesL.add(count);
		}
		
		for(int i=0;i<prod;i++){
			for(int j=1;j<prod;j++){
				if(j>=i){
					products.add(produ[i]);
					location.add(loca[i]);
				}
			}
		}
		//percentage
//		int lsum=0, gsum=0;
//		double lpercent, gpercent; 
//		for(int i=0;i<likesL.size();i++){
//			lsum = lsum + likesL(i);
//		}
		%>
		<table width="90%" align="center">
		<thead align="center">
		<tr bordercolor="grey">
		<td colspan="3">LOCATION TABLE</td>
		</tr>
		</thead>
		<tbody>
		<tr>
		<th>Product</th>
		<th>Location</th>
		<th>Number</th>
		</tr>
		<%
		for(int i=0;i<products.size();i++){%>
		<tr>
		<td><%=products.get(i) %></td>
		<td><%=location.get(i) %></td>
		<td><%=likesL.get(i) %></td>
		</tr>
		<% }
		%>
		</tbody>
		</table>
		<%
		//GenderTable
		for(int i=0;i<prod;i++){
			int count = 1;
			for(int j=1;j<prod;j++){
				if(j>=i){
					if(produ[i].equals(produ[j])&& gender[i].equals(gender[j])){
						count++;
						}
				}
			}
			count=1;
			likesG.add(count);
		}
		
		for(int i=0;i<prod;i++){
			for(int j=1;j<prod;j++){
				if(j>=i){
					products.add(produ[i]);
					genderr.add(gender[i]);
				}
			}
		}
		%>
		<h1></h1>
		<table width="90%" align="center">
		<thead align="center">
		<tr>
		<td colspan="3">GENDER TABLE</td>
		</tr>
		</thead>
		<tbody>
		<tr>
		<th>Products</th>
		<th>Gender</th>
		<th>Number</th>
		</tr>
		<%
		for(int i=0;i<genderr.size();i++){%>
		<tr>
		<td><%=products.get(i) %></td>
		<td><%=genderr.get(i) %></td>
		<td><%=likesG.get(i) %></td>
		</tr>
		<% }
		%>
		</tbody>
		</table>
		<%
		
//	}
}
catch(Exception e){
	System.out.print(e);
}
%>
</body>
</html>