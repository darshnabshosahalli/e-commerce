<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Customer WishList</title>
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
				<div class="col-md-6 row3col1">MY WISHLIST</div>
				<!-- ROW 3 COL 1 END -->
		
				<!-- -------------------- BREADCRUMB START --------------------->
				<div class="col-md-6 row3col2">
					<ol id="breadcrumb" class="breadcrumb">
						<li class="breadcrumb-item"><a id="unactivelink" href="home">Home</a></li>
						<li class="breadcrumb-item" aria-current="page">My Wishlist</li>
					</ol>
				</div>	
			</div>
		</div>
<!-- ----------------------------------------------- ROW END ------------------------------------------------------------ -->
        <!------------------------------- BODY START --------------------------------------------->
        <br><br>
        <div id="row4cp" class="container">
            <div class="col-md-9">
				<div class="container-fluid wishlisttext">
					Pellentesque Habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
					<br><br>
					<div class="col-md-12">
						<div class="col-md-3">
						<div class="relative">
							<img src="images/detailsquare1.jpg" class="productimages"><br>
						</div>
						<p class="productdesc" align="center">FUR COAT WITH<br>VERY BUT VERY<br>VERY LONG NAME</p>
						<p class="productdesc price" align="center">
							&#8377 143.00
						</p>
						<hr class="productline">
					</div>
					<div class="col-md-3">
						<div class="relative">
							<img src="images/detailsquare1.jpg" class="productimages">
							<div class="bottom-left">SALE</div>
							<div class="bottom-left-down">NEW</div>
						</div>
						<p class="productdesc" align="center">WHITE BLOUSE<br>
							ARMANI
						</p>
						<p class="productdesc price1" align="center">
							<strike>&#8377 280</strike> &#8377 143.00
						</p>
						<hr class="productline">
					</div>
					<div class="col-md-3">
						<div class="relative">
							<img src="images/detailsquare1.jpg" class="productimages">
						</div>
						<p class="productdesc" align="center">BLACK BLOUSE<br>
								VERSACE
							</p>
							<p class="productdesc price1" align="center">
								&#8377 143.00
							</p>
						<hr class="productline">
					</div>
					
					<div class="col-md-3">
						<div class="relative">
							<img src="images/detailsquare1.jpg" class="productimages">
						</div>
						<p class="productdesc" align="center">BLACK BLOUSE<br>
								VERSACE
							</p>
							<p class="productdesc price1" align="center">
								&#8377 143.00
							</p>
						<hr class="productline">
					</div>
				</div>
				<!-- ROW 2 END -->
				<!-- ROW 3 START -->
				<div class="col-md-3">
					<div class="relative">
						<img src="images/detailsquare1.jpg" class="productimages"><br>
						<div class="bottom-left">SALE</div>
						<div class="bottom-left-down">NEW</div>
					</div>
					<p class="productdesc" align="center">FUR COAT WITH<br>VERY BUT VERY<br>VERY LONG NAME</p>
					<p class="productdesc price" align="center">
						<strike>&#8377 280</strike> &#8377 145.00
					</p>
					<hr class="productline">
				</div>
				<div class="col-md-3">
					<div class="relative">
						<img src="images/detailsquare1.jpg" class="productimages">
						<div class="bottom-left-down">NEW</div>
					</div>
					<p class="productdesc" align="center">WHITE BLOUSE<br>
						ARMANI
					</p>
					<p class="productdesc price1" align="center">
						&#8377 143.00
					</p>
					<hr class="productline">
				</div>
				<div class="col-md-3">
					<div class="relative">
						<img src="images/detailsquare1.jpg" class="productimages">
						<div class="bottom-left-down">NEW</div>
					</div>
					<p class="productdesc" align="center">BLACK BLOUSE<br>
							VERSACE
						</p>
						<p class="productdesc price1" align="center">
							&#8377 143.00
						</p>
					<hr class="productline">
				</div>
				
				<div class="col-md-3">
					<div class="relative">
						<img src="images/detailsquare1.jpg" class="productimages">
					</div>
					<p class="productdesc" align="center">BLACK BLOUSE<br>
							VERSACE
						</p>
						<p class="productdesc price1" align="center">
							&#8377 143.00
						</p>
					<hr class="productline">
				</div>
				<!-- ROW 3 END -->
				</div>
			</div>
			<div id="customerrow4col2" class="col-md-3">
				<h3>CUSTOMER SECTION</h3>
				<hr class="greenhrline" align="left">
				<br>
				<ul class="nav nav-pills nav-stacked">
					<li><a href="#" class="greenlinks1"> 
						<i class="glyphicon glyphicon-menu-hamburger custsec"></i> My Orders
					</a></li>
					<li id="unactive"><a href="#" class="greenlinks1 active"> 
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