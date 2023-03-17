<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Withdrawing</title>
</head>
<body>
<%
	double acno=Double.parseDouble(request.getParameter("acno"));
	String name =request.getParameter("uname");
	String password=request.getParameter("pwd");
	double wamt=Double.parseDouble(request.getParameter("amt"));
	double balance=0.0;//temporary amount;to be changed
	String status="Deactivate";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rasan","rasan");
		PreparedStatement ps1=con.prepareStatement("select * from accounttable where acno=? and name=? and password=?");
		ps1.setDouble(1,acno);
		ps1.setString(2,name);
		ps1.setString(3,password);
		ResultSet rs=ps1.executeQuery();
		if(rs.next()){// java.sql.SQLException: ResultSet.next was not called
			String temp=rs.getString("status");
			if(status.equals(temp)){
				out.print(rs.getString("name")+ " your account has already been Deactivated");
				return;
			}
		
			out.print(rs.getString("name")+" Your previous balance is "+rs.getDouble("balance")+"<br>");
			out.print ("your withdrawal amount is "+ wamt+"<br>");
			double bal=rs.getDouble("balance");
			if(wamt<bal){//The operator < is undefined for the argument type(s) double, String
				 
				balance=bal-wamt;
			PreparedStatement ps=con.prepareStatement("update accounttable set balance=? where acno=?");
			ps.setDouble(1,balance);
			ps.setDouble(2,acno);
			int i=ps.executeUpdate();
			out.print("Now your balance is: "+ balance+"<br>" );
			con.close();
			}else{
				out.print("Please Enter Valid Amount that can be Withdrawn");
			}
		}//if
				
			}catch(Exception e){
			
			
		}
			
			
	

%>
</body>
</html>