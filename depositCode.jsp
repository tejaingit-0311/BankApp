
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Depositing</title>
</head>
<body>
	
<%
double acno=Double.parseDouble(request.getParameter("acno"));
String name=request.getParameter("uname");
String password=request.getParameter("pwd");
double damount=Double.parseDouble(request.getParameter("amt"));//(if kept type as text in html(runtime error))java.sql.SQLException: ORA-01722: invalid number
double balance=0.0;//amount to be changed
String status="Deactivate";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rasan","rasan");
		PreparedStatement ps1=con.prepareStatement("select*from accounttable where acno=? and name=? and password=?");
		ps1.setDouble(1,acno);
		ps1.setString(2,name);
		ps1.setString(3,password);
	
		ResultSet rs=ps1.executeQuery();
	
		if(rs.next()){// we can use while also
			String temp=rs.getString("status");
			if(status.equals(temp)){
				out.print(rs.getString("name")+ " your account has already been Deactivated");
				return;
			}
				
			out.print(rs.getString("name")+" Your previous balance is: "+rs.getDouble("balance")+"<br>");
			out.print("Your deposit amount is: "+ damount+"<br>");
		
	//logic
		double balance1=rs.getDouble("balance");//temp variable
		
		balance=balance1+damount; 
		PreparedStatement ps2=con.prepareStatement("update accounttable set balance=? where acno=?");
		ps2.setDouble(1,balance);
		ps2.setDouble(2,acno);
		int i=ps2.executeUpdate();
		out.print("Now your account balance is: "+balance);
			
		}else
			out.print("This account doesn't exsist...");
		
		
	//oracle.jdbc.driver.OracleResultSetImpl@56bce863
		
}catch(Exception e){
	out.print(e);
}
%>
</body>
</html>