<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*	" %>
<!DOCTYPE html>
<html>
<head>

<title>Transfering</title>
</head>
<body>
<%
double acno=Double.parseDouble(request.getParameter("acno"));
String name=request.getParameter("uname");
String password=request.getParameter("pwd");
double tacno=Double.parseDouble(request.getParameter("tacno"));
double tamt=Double.parseDouble(request.getParameter("amt"));//transfer to other acc.; "amt" value can be changed according to our needs , no error will occur
double balance=0.0;
String status="Deactivate";
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","rasan","rasan");
	
	PreparedStatement ps1=con.prepareStatement("select *from accounttable where acno=? and name=? and password=?");
	ps1.setDouble(1,acno);
	ps1.setString(2,name);
	ps1.setString(3,password);
	ResultSet rs1=ps1.executeQuery();
	
	//withdrawal from my account	
			
		if(rs1.next()){
			String temp=rs1.getString("status");
			//checking the status
			if(status.equals(temp)){
				out.print(rs1.getString("name")+ " your account has already been Deactivated");
				return;
			}
			out.print("My Account balance is "+ rs1.getDouble("balance")+"<br><br>");
			double myamt=rs1.getDouble("balance");	//temp varirable
			
			if(myamt>tamt){
				//logic
				//deducting and then updating my balance
				balance=myamt-tamt;
			PreparedStatement ps2=con.prepareStatement("update accounttable set balance=? where acno=?");
			ps2.setDouble(1,balance);
			ps2.setDouble(2,acno);
			
			int i = ps2.executeUpdate();
			out.println("Transfer amount has been debited sucessfully <br><br>");
			out.println("My remaining balance is "+ balance+"<br><br>");
			
			}else
				out.println("Please enter valid amount to be withdrawn");
		
	//checking other's account then adding amount
			
			PreparedStatement ps3=con.prepareStatement("select *from accounttable where acno=?");
			
			acno=tacno;//assigning tacno into acno temporarily to check with his acno
		//if(acno==tacno){
			ps3.setDouble(1,acno);
			
			ResultSet rs2=ps3.executeQuery();
				
	//depositing amount to other's bank account
			
			if(rs2.next()){
				double acc2_bal= rs2.getDouble("balance");
				if(acc2_bal>tamt){
					out.print("Account balance of other's is "+ acc2_bal+"<br><br>");
			
				balance=tamt+acc2_bal;
			
				PreparedStatement ps4=con.prepareStatement("update accounttable set balance=? where acno=?");
				ps4.setDouble(1,balance);
				ps4.setDouble(2,acno);
				int i = ps4.executeUpdate();
				out.print(" Amount increased by: "+tamt+"<br><br>");
				out.print(" Now Balance is : "+balance);
				}else
					out.print("Invalid amount insertion... ");
			
			
			
			}else
			
			out.print("This account doesn't exsist...");
			
		}else
			out.print("Invaild details of your account...");																																																																																																																																																																																																																																																																								
		
	con.close();
	}catch(Exception e){
	out.println(e);
}


%>
</body>
</html>