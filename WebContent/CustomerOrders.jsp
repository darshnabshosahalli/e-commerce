<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Customer Orders</title>
		<link rel="stylesheet" href="bootstrap-3.4.1-dist/css/bootstrap.css">
        <link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
        <link rel="stylesheet" href="css/custom2.css">
	</head>
	<body>
		<%@ include file="Header.jsp" %>
		<%@ include file="navbar.jsp" %>
 		<div id="row3" class="container-fluid">
			<div class="container">

<!-- ----------------------------------------------- ROW START ------------------------------------------------------------ -->
				<div class="col-md-6 row3col1">ORDER DETAILS</div>
				<!-- ROW 3 COL 1 END -->
		
				<!-- -------------------- BREADCRUMB START --------------------->
				<div class="col-md-6 row3col2">
					<ol id="breadcrumb" class="breadcrumb">
						<li class="breadcrumb-item"><a id="unactivelink" href="home">Home</a></li>
						<li class="breadcrumb-item" aria-current="page"><a id="unactivelink" href="home">MY ORDERS</a></li>
						<li class="breadcrumb-item" aria-current="page">SIGN IN</li>
					</ol>
				</div>	
			</div>
		</div>
<!-- ----------------------------------------------- ROW END ------------------------------------------------------------ -->
        <!------------------------------- BODY START --------------------------------------------->
        <br><br>
        <div id="row4cp" class="container">
            <div class="col-md-9">
				<div id="cod" class="col-md-12 firstrow">
					If you have any question, please feel free to <font id="home">contact us</font>,&nbsp;our customer service center is working for you 24/7.
					<br><br>
				</div>
				<div class="col-md-12">
					<table class="table" id="ctab">
							  <thead>
							    <tr>
							      <th scope="col">Order</th>
							      <th scope="col">Date</th>
							      <th scope="col">Total</th>
							      <th scope="col">Status</th>
							      <th scope="col">Action</th>
							    </tr>
							  </thead>
							  <tbody>
							    <tr>
							      <th scope="row">&nbsp;#175</th>
							      <td>12/07/2019</td>
							      <td><i class="fas fa-rupee-sign"></i>&nbsp;150</td>
							      <td><span class="label label-info" id="tpri">&nbsp;beign prepared</span></td>
							      <td>
							      	<button id="reg" type="submit" class="btn view">
    									view
    								</button>
    							  </td>
							    </tr>
							    <tr>
							      <th scope="row">&nbsp;#175</th>
							      <td>12/07/2019</td>
							      <td><i class="fas fa-rupee-sign"></i>&nbsp;150</td>
							      <td><span class="label label-info" id="tpri">&nbsp;beign prepared</span></td>
							      <td>
							      	<button id="reg" type="submit" class="btn view">
    									view
    								</button>
    							  </td>
							    </tr>
							    <tr>
							      <th scope="row">&nbsp;#175</th>
							      <td>12/07/2019</td>
							      <td><i class="fas fa-rupee-sign"></i>&nbsp;150</td>
							      <td><span class="label label-success" id="tgreen">&nbsp;received</span></td>
							      <td>
							      	<button id="reg" type="submit" class="btn view">
    									view
    								</button>
    							</td>
							    </tr>
							    <tr>
							      <th scope="row">&nbsp;#175</th>
							      <td>12/07/2019</td>
							      <td><i class="fas fa-rupee-sign"></i>&nbsp;150</td>
							      <td><span class="label label-danger" id="tdan">&nbsp;cancelled</span></td>
							      <td>
							      	<button id="reg" type="submit" class="btn view">
    									view
    								</button>
    							</td>
							    </tr>
							    <tr>
							      <th scope="row">&nbsp;#175</th>
							      <td>12/07/2019</td>
							      <td><i class="fas fa-rupee-sign"></i>&nbsp;150</td>
							      <td><span class="label label-warning" id="twarn">&nbsp;on hold</span></td>
							      <td>
							      	<button id="reg" type="submit" class="btn view">
    									view
    								</button>
    							</td>
							    </tr>
							  </tbody>
						</table>
				</div>
			</div>
			<div id="customerrow4col2" class="col-md-3">
				<h3>CUSTOMER SECTION</h3>
				<hr class="greenhrline" align="left">
				<br>
				<ul class="nav nav-pills nav-stacked">
					<li><a href="#" class="greenlinks1 active"> 
						<i class="glyphicon glyphicon-menu-hamburger custsec"></i> My Orders
					</a></li>
					<li id="unactive"><a href="#" class="greenlinks1"> 
						<i class="glyphicon glyphicon-heart custsec"></i> My Wishlist
					</a></li>
					<li><a href="#" class="greenlinks1"> 
						<i class="glyphicon glyphicon-user custsec"></i> My Account
					</a></li>
					<li id="unactive"><a href="#" class="greenlinks1"> 
						<i class="glyphicon glyphicon-log-out custsec"></i> Logout
					</a></li>
				</ul>
			</div>
		
        </div> 
       
<!-- ----------------------------------------------------------Body End  --------------------------------------------------->
		
		<!-- ROW 3 END -->
		<%@ include file="Footer.html" %>
		<%@ include file="LastRow.html" %>	
	</body>
</html>