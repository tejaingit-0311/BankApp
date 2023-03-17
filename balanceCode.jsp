<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	double acno=Double.parseDouble(request.getParameter("acno"));
	String name=request.getParameter("uname");
	String password=request.getParameter("pwd");
	String status="Deactivate";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rasan","rasan");
			PreparedStatement ps=con.prepareStatement("select*from accounttable where acno=? and name=? and password=?");
			
			ps.setDouble(1,acno);
			ps.setString(2,name);
			ps.setString(3,password);
			ResultSet rs=ps.executeQuery();
			ResultSetMetaData rsmd=rs.getMetaData();
							
			int n=rsmd.getColumnCount();// n number of columns
			out.print("<table border='1'><tr>");	
			for(int i=1;i<=n;i++){
				if(i!=3){	
					out.print("<td>"+rsmd.getColumnName(i)+"</td>");
				}
			}
			out.print("</tr>");
			
			
			if(rs.next()){// while not used as doesn't need to show enitre values
				String temp=rs.getString("status");//to set status 
					if(status.equals(temp)){
						out.print(rs.getString("name")+ " your account has already been Deactivated");
						return;
					}
					
				out.print("<tr>");
				for(int i=1;i<=n;i++){
				if(i!=3){
				out.print("<td>"+rs.getString(i)+"</td>");
				}
			}//for
		}//if
			out.print("</tr></table>");
						
		con.close();
	}catch(Exception e){
		out.println(e);
	}
		
	
%>
</body>
</html>