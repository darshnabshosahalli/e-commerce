<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
        	<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>Customer Orders Details</title>
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
						<li class="breadcrumb-item" aria-current="page">ORDER DETAILS</li>
					</ol>
				</div>	
			</div>
		</div>
<!-- ----------------------------------------------- ROW END ------------------------------------------------------------ -->
        <!------------------------------- BODY START --------------------------------------------->
        <br><br>
        <div id="row4cp" class="container">
          	<!-- ROW 4 COL 1 ROW 1 END -->
				<div class="col-md-9">
					 <div id="cod" class="col-md-12 firstrow">
						Order #1735 was placed on <b class="coddate">22/06/2013</b> and is currently <b class="coddate">Being prepared</b>.<br></br>	
						if you have any questions,please feel free to <font id="home">contact us</font>, our customer service center is working for<br>
						you 24/7.
						<br><br>
					</div>
					<table class="table">
					<tr>
						<th>Product</th>
						<th></th>
						<th>Quantity </th>
						<th>Unit price</th>
						<th>Discount </th>
						<th>Total</th>
					</tr>
					<tr>
						<th>
							<img src="images/detailsquare1.jpg" class="orderimages">
						</th>
						<th>
							<br>
							<font id="home">White Blouse Armani</font>
						</th>
						<th class="fthree">
							<br>2
						</th>
						<th class="fthree">
							<br>&#8377 123.00
						</th>
						<th class="fthree">
							<br>&#8377 0.00
						</th>
						<th class="fthree">
							<br>&#8377 246.00
						</th>
					</tr>
					<tr>
						<th>
							<img src="images/detailsquare1.jpg" class="orderimages">
						</th>
						<th>
							<br>
							<font id="home">Black Blouse Armani</font>
						</th>
						<th>
							<br>1
						</th>
						<th class="fthree">
							<br>&#8377 200.00
						</th>
						<th class="fthree">
							<br>&#8377 0.00
						</th>
						<th class="fthree">
							<br>&#8377 200.00
						</th>
					</tr>
					<tr>
						<th colspan="5" class="lthree">Order subtotal</th>
						<th class="fthree">&#8377 446.00</th>
					</tr>
					<tr>
						<th colspan="5" class="lthree">Shipping and handing</th>
						<th class="fthree">&#8377 10.00</th>
					</tr>
					<tr>
						<th colspan="5" class="lthree">Tax</th>
						<th class="fthree">&#8377 00.00</th>
					</tr>
					<tr>
						<th colspan="5" class="lthree">Total</th>
						<th class="fthree">&#8377 456.00</th>
					</tr>
				</table>
				<div id="cod" class="col-md-12 lastrow">
					<h3><b id="shpaddress">SHIPPING ADDRESS</b></h3>
					<p>
						Akshat Kumar<br>
						Plot No. 110, Road No.3<br>
						Ajanta Homes<br>
						Madinaguda<br>
						Hyderabad - 500081<br>
						Telangana,India<br>				
					</p>
					<hr>
					<br><br>
				</div>
			</div>
				<!-- ROW 4 COL 2 START -->
				<div id="customerrow4col2" class="col-md-3">
 					<h3>CUSTOMER SECTION</h3>
			         <hr class="greenhrline" align="left">
			         <br>
					<ul class="nav nav-pills nav-stacked">
						<li><a href="#" class="greenlinks1 active"> <i
								class="glyphicon glyphicon-menu-hamburger custsec"></i> My Orders
						</a></li>
						<li id="unactive"><a href="#" class="greenlinks1"> <i
								class="glyphicon glyphicon-heart custsec"></i> My Wishlist
						</a></li>
						<li><a href="#" class="greenlinks1"> <i
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