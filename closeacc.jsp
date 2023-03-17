<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Close account form</title>
</head>
<body>
<div align ="center" style="background-color:yellow">
		<fieldset>
	<span style="color:red"><a href="home.jsp" target=_blank>Home</a>
	<a href="openacc.jsp">New Account</a>
	<a href="balance.jsp">Balance</a>
	<a href="deposit.jsp">Deposit</a>
	<a href="withdraw.jsp">Withdraw</a>
	<a href="transfer.jsp">Transfer</a>
	<a href="closeacc.jsp">CloseA/C</a>
	<a href="aboutus.jsp" target=_blank>About Us</a></span>
	
	
	<form action="closeCode.jsp" method="post">
		<h1 style="color:red;" align ="center">CLOSE ACCOUNT FORM</h1>
	<table>
		<tr>
			<td>Account number:</td>
			<td><input type="number" name="acno"></td>
		</tr>
		
		<tr>
			<td>Name:</td>
			<td><input type="text" name="uname"></td>
		</tr>
		
		<tr>
			<td>Password:</td>
			<td><input type="password" name="pwd"></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="Submit"></td>
			<td><input type="reset" value="Clear"></td>
		</tr>
	</table>
	</form>
	</fieldset>
	</div>
</body>
</html>