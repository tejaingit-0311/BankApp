
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

.image{
	filter:blur(9px);
	position:relative;
}
.text{
	left:23%;
	
	bottom:60%;
	position:absolute;
	color:yellow;
	
	
}
#links{
	background-color:orange;
	padding:3px;
	bottom:40%;
	text-align:center;
	padding:4px;
	border-radius:3px;
	background-color:orange;
	left:23%;
}
.fixed{
	position:fixed;
}
.home:hover {background-color:yellow}
.newaccount:hover {background-color:yellow}
.balance:hover {background-color:yellow}
.deposit:hover {background-color:yellow}
.transfer:hover {background-color:yellow}
.closeac:hover {background-color:yellow}
.aboutus:hover {background-color:yellow}
.withdraw:hover {background-color:yellow}

</style>
<meta charset="ISO-8859-1">
<title>User Home</title>
</head>
<body>
<div class="fixed">

	<div class="image"><img src="vault.webp" height="50%" width="100%" alt="Bank"></div>
	
	<div class="text" align="center"><h1> VAULT BANK </h1>
	<h2 align="center"> Welcome!!!</h2>
	
	<div id="links"><a href="home.jsp" target=_blank class="home">Home|   </a>
	<a href="openacc.jsp" class="newaccount">New Account|   </a>
	<a href="balance.jsp" class="balance">Balance|      </a>
	<a href="deposit.jsp" class="deposit">Deposit|     </a>
	<a href="withdraw.jsp" class="withdraw">Withdraw|   </a>
	<a href="transfer.jsp" class="transfer">Transfer|   </a>
	<a href="closeacc.jsp" class="closeac">CloseA/C|   </a>
	<a href="aboutus.jsp" target=_blank class="aboutus">About Us</a></div>
	
	<h3> Assure Your Safety Join with Us </h3></div>
	
</div>
</body>
</html>