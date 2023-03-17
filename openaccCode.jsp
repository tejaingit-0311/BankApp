<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Opened</title>

</head>
<body>
<%@ page import="java.sql.*"%><% 
double acno=Double.parseDouble(request.getParameter("acno"));
String name=request.getParameter("uname");
String password=request.getParameter("pwd");
String cpwd=request.getParameter("cpwd");
Double balance=Double.parseDouble(request.getParameter("amt"));
String address=request.getParameter("addr");
long mobilenumber=Long.parseLong(request.getParameter("mno"));
String status=null;
if(password.equals(cpwd)){
 
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rasan","rasan");
	PreparedStatement ps=con.prepareStatement("insert into accounttable values(?,?,?,?,?,?,?)");
	ps.setDouble(1,acno);
	ps.setString(2,name);
	ps.setString(3,password);
	ps.setDouble(4,balance);
	ps.setString(5,address);
	ps.setLong(6,mobilenumber);
	
	status="Activated";
	ps.setString(7,status);
	int i= ps.executeUpdate();
	out.println(i+" account has Activated");
	out.println("You've succesfully opened your account...");
	
	con.close();

}catch(Exception e){
	out.println(e);
}
}//if
else {
	out.println("Passwords does'nt match");
	}
%>
</body>
</html>
