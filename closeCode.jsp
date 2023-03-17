<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Closing</title>
</head>
<body>
<% 
	double acno=Double.parseDouble(request.getParameter("acno"));
	String name=request.getParameter("uname");//if this value("uname") kept wrong then validation time values would not be matched
	String password=request.getParameter("pwd");
	String status=null;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rasan","rasan");
		PreparedStatement ps=con.prepareStatement("select *from accounttable where acno=? and name=? and password=?");
		ps.setDouble(1,acno);
		ps.setString(2,name);
		ps.setString(3,password);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			//if again wants to activate then?
			String temp=rs.getString("status");
				
			if(temp.equals("Activated")){
				
				status="Deactivate";
			
			PreparedStatement ps1=con.prepareStatement("update accounttable set status=? where acno=?");
			ps1.setString(1,status);
			ps1.setDouble(2,acno);
			int i=ps1.executeUpdate();
			out.print("Account "+rs.getDouble("acno")+" has been Deactivated");
			
			}else
				out.print ("This Account has already been Deactivated");	
			
		}else
			out.print("Invalid Details");
	
		
		con.close();
	
	}catch(Exception e){
		out.print(e);
	}
	
%>
</body>
</html>