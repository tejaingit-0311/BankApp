<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function check(){
	var v1=bank.acno.value;
	var v2=bank.uname.value;
	var v3=bank.pwd.value;
	var v4=bank.cpwd.value;
	var v5=bank.amt.value;
	var v6=bank.addr.value;
	var v7=bank.mno.value;

	if(v1==" "){
		alert("Don't leave account number colomn blank ");
		//document.bank.acno.focus();
		return false;
	}
	if(v2==" "){
		alert("Please enter username");
		//document.bank.uname.focus();
		return false;
	}
	if(v3==" "){
		alert("Please enter password");
		//document.bank.pwd.focus();
		return false;
	}
	if(v4==" "){
		alert("Please enter confirm password");
		//document.bank.cpwd.focus();
		return false;
	]	
		
	if(v3!=v4){
			alert("Passwords doesn't not matched");
			//document.openacc.acno.focus();
			return false;
	}	
	
	if(v5 ==" "){
		alert("Please enter amount");
		//document.bank.amt.focus();
		return false;
	}
	if(v6==" "){
		alert("Please enter address");
		//document.bank.addr.focus();
		return false;
	}
	if(v7==" "){
		alert("Please enter mobile number");
		//document.bank.mno.focus();
		return false;
	}
}
</script>
<title>Register Here</title>
</head>
<body>
	<div align="center" style="background-color:yellow">
	<fieldset>
	<div align="center"><a href="home.jsp" target=_blank>Home</a>
	<a href="openacc.jsp" >New Account</a>
	<a href="balance.jsp" target=_blank>Balance</a>
	<a href="deposit.jsp" target=_blank>Deposit</a>
	<a href="withdraw.jsp" target=_blank>Withdraw</a>
	<a href="transfer.jsp" target=_blank>Transfer</a>
	<a href="closeacc.jsp">CloseA/C</a>
	<a href="aboutus.jsp" target=_blank>About Us</a></div>
	

	<form name="bank" action="openaccCode.jsp" method="post" onsubmit="return check()">
		<h1 style="color:red;" align ="center"> OPEN ACCOUNT FORM </h1>
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
			<td>Confirm password:</td>
			<td><input type="password" name="cpwd"></td>
		</tr>
		<tr>
			<td>Amount:</td>
			<td><input type="number" name="amt"></td>
		</tr>
		
		<tr>
			<td>Address:</td>
			<td><textarea rows="3" cols="15" name="addr"></textarea></td>
		</tr>
		<tr>
			<td>Mobile Number:</td>
			<td><input type="number" name="mno"></td>
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