<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

#image{
	position:relative;
	filter: blur(9px);
  
}
#text{
	position:absolute;
	text-align:justify;
	bottom:10%;
	left:10%;
	color:orange;
	right:10%;
}
#links{
	position:absolute;
	bottom:60%;
	text-align:center;
	padding:4px;
	border-radius:3px;
	background-color:orange;
	left:23%;
	
	
}
//#links:hover {background-color: #3e8e41}

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
<title> Here...about us </title>
</head>
<body>
	
	<div id="image"><img src="vault.webp" height="50%" width="100%" alt="Bank"></div>
	
	<div id="links">
	<a href="home.jsp" target=_blank class="home">Home|</a>
	<a href="openacc.jsp" class="newaccount">New Account|</a>
	<a href="balance.jsp" class="balance">Balance|</a>
	<a href="deposit.jsp" class="deposit">Deposit|</a>
	<a href="withdraw.jsp" class="withdraw">Withdraw|</a>
	<a href="transfer.jsp" class="transfer">Transfer|</a>
	<a href="closeacc.jsp" class ="closeac">CloseA/C|</a>
	<a href="aboutus.jsp" class="aboutus">About Us</a></div>
	<div id="text"><p>Searching for a place to keep your earnings Safe and Secure??? Then you are at right 
	the place.
	We provide the best facilites that you are searching for.</p>
	Few points we would like to highlight.
	<ul type="square">
	<li> Customer Freindly</li>
	<li> 24/7 Services</li>
	<li> Safety is our first priority </li>
	
	</ul>
	</div>
</body>
</html>