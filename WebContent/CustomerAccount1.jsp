<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.tadigital.ecommerce.service.Service"%>
<%@ page import="com.tadigital.ecommerce.customer.entity.Customer"%>
<%@ page import="com.tadigital.ecommerce.customer.entity.Address" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Customer Account</title>
		<link rel="stylesheet" href="bootstrap-3.4.1-dist/css/bootstrap.css">
        <link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/custom2.css">
	</head>
	<body>
<%
		String fname = "";
		String lname = "";
		String email = "";
		String gender = "";
		String dob = "";
		String malechecked = "";
		String femalechecked = "";
		String transchecked = "";
		String address = "";
		String city = "";
		String zip = "";
		String state = "";
		String country = "";
		String contact = "";
		if(session.getAttribute("CUSTOMEROBJECT") != null) {
			Customer cust = (Customer)session.getAttribute("CUSTOMEROBJECT");
			fname = cust.getCustFname();
			lname = cust.getCustLname();
			email= cust.getCustEmail();
			if (cust.getCustDOB() != null) {
				dob = cust.getCustDOB();
				Service svc= new Service();
				dob = svc.getHtmlFormat(dob);
			}
			if (cust.getCustGender() != null) {
				gender = cust.getCustGender();
				if(gender.equals("male")) {
					malechecked = "checked";
				}
				else if (gender.equals("female")) {
					femalechecked = "checked";
				}
				else {
					transchecked = "checked";
				}
			}
			if (cust.getCustContactNo() != null) {
				contact = cust.getCustContactNo();
			}
		}
		if(session.getAttribute("ADDRESSOBJECT") != null) {
			Address addr = (Address)session.getAttribute("ADDRESSOBJECT");
			if(addr.getAddress() != null) {
				address = addr.getAddress();
			}
			if(addr.getCity() != null) {
				city = addr.getCity();
			}
			if(addr.getPincode() != null) {
				zip = addr.getPincode();
			}
			if(addr.getState() != null) {
				state = addr.getState();
			}
			if(addr.getCountry() != null) {
				country = addr.getCountry();
			}
						
		}
%>
		<%@ include file="Header.jsp" %>
		<%@ include file="navbar.jsp" %>
 		<div id="row3" class="container-fluid">
			<div class="container">

<!-- ----------------------------------------------- ROW START ------------------------------------------------------------ -->
				<div class="col-md-6 row3col1">MY ACCOUNT</div>
				<!-- ROW 3 COL 1 END -->
		
				<!-- -------------------- BREADCRUMB START --------------------->
				<div class="col-md-6 row3col2">
					<ol id="breadcrumb" class="breadcrumb">
						<li class="breadcrumb-item"><a id="unactivelink" href="home">Home</a></li>
						<li class="breadcrumb-item" aria-current="page">My Account</li>
					</ol>
				</div>	
			</div>
		</div>
<!-- ----------------------------------------------- ROW END ------------------------------------------------------------ -->
        <!------------------------------- BODY START --------------------------------------------->
        <br><br>
        <div id="row4cp" class="container">
            <div id="customerrow4col1row1" class="col-md-12">
				<div id="customerrow4col1row1head">
					<h4>Change your personal details or your password here</h4>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p>
					<hr>
				</div>
			</div>
             				<!-- ROW 4 COL 1 ROW 1 END -->
<%
						if(request.getAttribute("UPDATEPROCESS") != null) {
							if((boolean)request.getAttribute("UPDATEPROCESS")) {
%>
							<div class="alert alert-success">
								Update Successful
							</div>
<%
							}
							else {
%>
								<div class="alert alert-danger">
									Update Unsuccessful
								</div>
<%
														}
						}
						
%>
				<div class="col-md-9">
					<!-- ROW 4 COL 1 ROW 2 START -->
					<div id="customerrow4col1row2" class="col-md-12">
						<hr>
						<h4><b>PERSONAL DETAILS</b></h4>
	                    <hr class="greenhrline" align="left">
	                </div>
	                <!-- ROW 4 COL 1 ROW 2 END -->
					<div id="personalDetailsDiv" class="container-fluid">
						<form action="changepersonaldetails" method="post">
							<div class="col-md-6">
								<div class="form-group">
		    						<label class="lbl">First Name:</label>
		    						<input type="text" class="form-control from" value="<%= fname%>" id="fname" name="fname">
		  						</div>
		  					</div>
		  					<div class="col-md-6">
		  						<div class="form-group">
		    						<label class="lbl">Last Name:</label>
		    						<input type="text" class="form-control from" value="<%= lname%>" id="lname" name="lname">
		  						</div>
							</div>
							<div class="col-md-12">
		  						<div class="form-group">
		    						<label class="lbl">Gender</label>
		    						<input type="radio" name="gender" value="male" <%= malechecked %>> Male<br>
		                         	<input type="radio" name="gender" value="female" <%= femalechecked %>> Female<br>
		                          	<input type="radio" name="gender" value="other" <%= transchecked %>> Transgender<br>
		  						</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
		    						<label class="lbl">DOB:</label>
		    						<input type="date" class="form-control from" value="<%= dob %>" id="dob" name="dob">
		  						</div>
		  					</div>
		  					<div class="col-md-6">
		  						<div class="form-group">
		    						<label class="lbl">Profile Picture:</label>
		    						<input type="file" class="form-control from" id="pic" name="pic">
		  						</div>
							</div>
							<div class="col-md-12">
		  						<div class="form-group">
		    						<label class="lbl">Address</label>
		    						<textarea class="frm" rows="3" name="address"><%= address %></textarea>
		  						</div>
							</div>	
							<div id="cityid" class="col-md-3 infocol">
		                		<label class="lbl">City</label><br>
		                    	<input type="text" class="frm" name="city" value="<%= city %>" >		
		                	</div>
		                	<div id="cityid" class="col-md-3 infocol">
		                		<label class="lbl">Zip</label><br>
		                    	<input type="text" class="frm" name="zip" value="<%= zip %>">		
		                	</div>
		                	<div id="cityid" class="col-md-3 infocol">
		                		<label class="lbl">State</label><br>
		                    	<select id="stateselect" class="form-control frm" name="state">
		                    	<!------------------ BLANK ROW ---------------------------->
		                    	<option value="<%= state %>"><%= state %></option>
		                    	<!------------------ BLANK ROW ---------------------------->
		                    	
	<%
								Service srvc = new Service();
								String states [] =srvc.getStates();
								for (String s : states) {
	%>
									<option value="<%= s %>"><%= s %></option>
	<%
								}
								
	%>
		                    	</select>	
		                	</div>
		                	<div id="cityid" class="col-md-3 infocol">
		                		<label class="lbl">Country</label><br>
		                    	<select id="stateselect" class="form-control frm" name="country">
		                    	<option value="<%= country %>"><%= country %></option>
	<%
								String countries [] =srvc.getCountry();
								for (String c : countries) {
	%>
									<option value="<%= c %>"><%= c %></option>
	<%
								}
								
	%>
		                    	</select>		
		                	</div>
		                	<div id="cityid" class="col-md-6 infocol">
		                		<label class="lbl">Contact Number</label><br>
		                    	<input type="text" class="frm" name="contact" value="<%= contact %>"> 	
		                	</div>
		                	<div id="cityid" class="col-md-6 infocol">
		                		<label class="lbl">Email</label><br>
		                    	<input type="text" name="email" value="<%= email %>" class="frm">		
		                	</div><br><br>
		                	<button id="saveButton" class="reg" type="submit" class="btn">
		    					<span id="regicon" class="far fa-save" ></span>  
		    						Save Changes
		    				</button>
		                </form><br><br><br>
					</div>
				</div>
				<!-- ROW 4 COL 2 START -->
				<div id="customerrow4col2" class="col-md-3">
 					<h3>CUSTOMER SECTION</h3>
			         <hr class="greenhrline" align="left">
			         <br>
					<ul class="nav nav-pills nav-stacked">
						<li><a href="#" class="greenlinks1"> <i
								class="glyphicon glyphicon-menu-hamburger custsec"></i> My Orders
						</a></li>
						<li id="unactive"><a href="#" class="greenlinks1"> <i
								class="glyphicon glyphicon-heart custsec"></i> My Wishlist
						</a></li>
						<li><a href="#" class="greenlinks1 active"> <i
								class="glyphicon glyphicon-user custsec"></i> My Account
						</a></li>
						<li id="unactive"><a href="#" class="greenlinks1"> <i
								class="glyphicon glyphicon-log-out custsec"></i> Logout
						</a></li>
					</ul>
				</div>
<!-- ----------------------------------------------------------Body End  --------------------------------------------------->
		</div>
		<!-- ROW 3 END -->
		<%@ include file="Footer.html" %>
		<%@ include file="LastRow.html" %>	
	</body>
</html>