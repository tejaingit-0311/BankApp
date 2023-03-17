<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Withdraw Form</title>
</head>
<body>
	<div align="center" style="background-color:yellow">
	<fieldset>
	<div align="center"><a href="home.jsp" target=_blank>Home</a>
	<a href="openacc.jsp">New Account</a>
	<a href="balance.jsp">Balance</a>
	<a href="deposit.jsp">Deposit</a>
	<a href="withdraw.jsp" target=_blank>Withdraw</a>
	<a href="transfer.jsp">Transfer</a>
	<a href="closeacc.jsp">CloseA/C</a>
	<a href="aboutus.jsp" target=_blank>About Us</a></div>
	
	
	<form action="withdrawalCode.jsp" method="post">
		<h1 style="color:red;" align ="center">WITHDRAW FORM</h1>
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
			<td>Amount:</td>
			<td><input type="number" name="amt"></td>
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