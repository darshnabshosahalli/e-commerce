<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Sign In Sign Up Form</title>
		<script type="text/javascript" src="js/custom.js"></script>
       	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="bootstrap-3.4.1-dist/css/bootstrap.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
		<link rel="stylesheet" href="css/custom2.css">
	</head>
	<body>
		<%@ include file="Header.jsp" %>
		<%@ include file="navbar.jsp" %>
		<!------------------------- SIGN IN SIGN UP START --------------------------->
		<div id="row3" class="container-fluid">
		
			<!-- ROW 3 COL 1 START -->
			<div class="col-md-6 row3col1">
				NEW ACCOUNT / SIGN IN
			</div>
			<!-- -------------------- BREADCRUMB START --------------------->
			<div class="col-md-6 row3col2">
				<ol id="breadcrumb" class="breadcrumb">
    				<li class="breadcrumb-item"><a id="unactivelink" href="home">Home</a></li>
    				<li class="breadcrumb-item"><a id="unactivelink" href="#">Library</a></li>
				    <li class="breadcrumb-item" aria-current="page">Data</li>
				  </ol>
			</div>
			<!-------------------------- BREADCRUMB END -------------------->
		</div>
		<!------------------------------- FORM START ------------------------->
		<div id="row4" class="container">
			<!-- ROW 4 COL 1 START -->
			<div class="col-md-12 page">
				<div class="col-md-6 row4col1">
					<hr>
					<!-- ROW 4 COL 1 ROW 1 START -->
					<div class="col row4col1row1">
						<p id="ac">NEW ACCOUNT</p>
						<p id="light">Not our registered customer yet?<p>
						<p>With registration with us new world of fashion, fantastic discounts and<br>
						much more opens to you! The whole process will not take you more<br>
						than a minute!<br></p>
						<p id="lastLine">if you have any questions. please feel free to <font class="contact">contact us</font>, our customer<br>
						service center is working for you 24/7.</p>
					</div>
					<!-- ROW 4 COL 1 ROW 1 END -->
					<hr>
					<!-- ROW 4 COL 2 START -->
					<div class="row4col1row1">
						<!-----------------REGISTRATION FORM START----------------->
						<form id="registrationForm" action="register" method="post">
							<div>
								<label class="lbl" for="name">Name</label><br>
	    						<input class="frm" type="text" name="name" required><br>
	    						<label class="lbl" for="email">Email</label><br>
	    						<input class="frm" type="text" name="email" required><br>
	    						<label class="lbl" for="password">Password</label><br>
	    						<input class="frm" type="text" name="password" required><br>
	    						<button class="reg" type="submit" class="btn">
	    							<span id="regicon" class="glyphicon glyphicon-user regicon" ></span>  
	    							REGISTER
	    						</button>
	    					</div>	
						</form><br>
<%
						if(request.getAttribute("REGISTRATIONSTATUS") != null) {
							if((boolean)request.getAttribute("REGISTRATIONSTATUS")) {
%>
							<div class="alert alert-success">
								Registration Successful
							</div>
<%
							}
							else {
%>
								<div class="alert alert-danger">
									Registration Unsuccessful
								</div>
<%
														}
						}
						
%>
						<!--------------------REGISTRATION FORM END----------------->
						<hr id="endline">
					</div>
					<!-- ROW 4 COL 2 END -->
				</div>
			<!-- ROW 4 COL 1 END -->
			<!-- ROW 4 COL 2 START -->
			<div class="col-md-5 signinform">
				<hr>
					<div>
						<p id="ac1">SIGN IN</p>
						<p>Already our customer?</p>
						<br>
						<p id="signinaccess">Get access to your Orders,Wishlist and Recommendations.
						<hr>
						<!--------------------SIGN IN FORM START--------------------->
						<form id="signinForm" action="login" method="post">
							<div class="container-fluid">
								<label class="lbl" for="name">Email</label><br>
	    						<input class="frm" type="text" name="email" required><br>
	    			            <label class="lbl" for="password">Password</label><br>
	    			            <input class="frm" type="password" name="password" required><br>
	    			            <button class="reg" type="submit" class="btn">
	    							<span id="regicon" class="glyphicon glyphicon-log-in regicon" ></span>  
	    							LOG IN
	    						</button>
	    					</div>	
						</form>
<%
						if(request.getAttribute("LOGINPROCESS") != null) {
							if((boolean)request.getAttribute("LOGINPROCESS")) {
%>
							<div class="alert alert-success">
								LOGIN Successful
							</div>
<%
						}
						else {
%>
							<div class="alert alert-success">
								LOGIN Unsuccessful
							</div>
<%
						}
							}
						
%>
						<!----------------------SIGN IN FORM END--------------------->	
					</div>	
					<hr>
			</div>
			<!-- ROW 4 COL 2 END -->
		   </div>
		</div>
		<!-- ROW 4 END -->
		<%@ include file="Footer.html" %>
		<%@ include file="LastRow.html" %>
	</body>
</html>