<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.tadigital.ecommerce.customer.entity.Customer"%>
<!DOCTYPE html>
<html>
	<head>
		  <meta charset="utf-8">
		  <title>Title</title>
		  <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		  <link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		  <link rel="stylesheet" href="css/custom2.css">
		  
	</head>
	<body>
<!-- ----------------------------------------------  NAV BAR START ------------------------------------------- -->
		<nav class="navbar fixed-top navbar-inverse">
			<div>
	 			<div class="col-md-7 navbar-header">
	      			<a id="navbar-brand" class="navbar-brand" href="#">Contact Us on +91 406621777</a>
	    		</div>
<%
				if(session.getAttribute("CUSTOMEROBJECT") != null) {
					if(session.getAttribute("CUSTOMEROBJECT") != null) {	
						Customer cust = (Customer) session.getAttribute("CUSTOMEROBJECT");
%>
<!-- ----------------------------------------------  LOAD WHEN LOGIN SUCCESSFUL ------------------------------------------- -->
				<ul class="col-md-4 nav navbar-nav" style="padding-left: 60px;">
	      			<li class="dropdown">
			        	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Welcome <%= cust.getCustFname()  %><%= cust.getCustLname()%>  <span class="caret"></span></a>
			          	<ul class="dropdown-menu">
			            	<li><a href="changepersonaldetails">My Account</a></li>
			            	<li><a href="changepassword">Change Password</a></li>
			           		<li><a href="signout">Sign Out</a></li>
			            </ul>
			        </li>

	      			<li><a href="#">
<!-- ----------------------------------------------  SOCIAL MEDIA ICONS START  -------------------------------------------- -->
						<span class="fab fa-facebook-f"></span>
					</a></li>
					<li>
						<!-- google + -->
						<a href="#">
							<span class="fab fa-google-plus-g"></span>
						</a>
					</li>
					<li>
					<!-- twitter -->
					<a href="#">
						<i class="fab fa-twitter"></i>
					</a>	
					</li>
					<li>
					<!-- gamil -->
					<a href="#">
						<i class="fas fa-envelope"></i>
					</a>
					</li>
<!-- ----------------------------------------------  SOCIAL MEDIA ICONS END     ------------------------------------------- -->
	    		</ul>	    		
<%
					}
				}
				else {
%>
<!-- ----------------------------------------------  LOAD DEFAULT ------------- ------------------------------------------- -->
				<ul class="col-md-5 nav navbar-nav">
	      			<li>
	      				<a type="button" class="signinbutton" data-toggle="modal" data-target="#myModal1">
	      					<SPAN class="glyphicon glyphicon-log-in" ></SPAN> 
	      					Sign In
	      				</a>
	      			</li>
	      			<li>
	      				<a type="button" class="signinbutton" data-toggle="modal" data-target="#myModal2">
	      					<span id="usericon" class="glyphicon glyphicon-user" ></span>
	      					Sign Up
	      				</a>
	      			</li>
	      			<li><a href="#">
	      				<span id="usericon" class="glyphicon glyphicon-user" ></span>
	      				Vendor Sign In
	      			</a></li>
<!-- ----------------------------------------------  MODAL START ---------------------------------------------------------- -->
      			<!-- ------------------------------ SOCIAL MEDIA BUTTON ---------------------------- -->
	      			<li><a href="#">
	      			<!-- facebook -->
						<span class="fab fa-facebook-f"></span>
					</a></li>
					<li>
						<!-- google + -->
						<a href="#">
							<span class="fab fa-google-plus-g"></span>
						</a>
					</li>
					<li>
					<!-- twitter -->
						<a href="#">
							<i class="fab fa-twitter"></i>
						</a>	
					</li>
					<li>
					<!-- gamil -->
						<a href="#">
							<i class="fas fa-envelope"></i>
						</a>
					</li>
					<!-- ------------------------------ SOCIAL MEDIA BUTTON ---------------------------- -->
	    		</ul>						    		
<%
				}
%>
	    	</div>
  		</nav>
  		<script type="text/javascript" src="fontawesome-free-5.9.0-web/js/all.js"></script>
	</body>
</html>