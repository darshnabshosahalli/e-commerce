<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Shopping Cart</title>
		<link rel="stylesheet" href="bootstrap-3.4.1-dist/css/bootstrap.css">
        <link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/custom2.css">
	</head>
	<body>
		<%@ include file="Header.jsp" %>
		<%@ include file="navbar.jsp" %>
 		<div id="row3" class="container-fluid">
			<div class="container">

<!-- ----------------------------------------------- ROW START ------------------------------------------------------------ -->
				<div class="col-md-6 row3col1">Change Password</div>
				<!-- ROW 3 COL 1 END -->
		
				<!-- -------------------- BREADCRUMB START --------------------->
				<div class="col-md-6 row3col2">
					<ol id="breadcrumb" class="breadcrumb">
						<li class="breadcrumb-item"><a id="unactivelink" href="home">Home</a></li>
						<li class="breadcrumb-item" aria-current="page">Change Password</li>
					</ol>
				</div>	
			</div>
		</div>
<!-- ----------------------------------------------- ROW END ------------------------------------------------------------ -->
        <!------------------------------- BODY START --------------------------------------------->
        <br><br>
        <div id="row4cp" class="container">
            <div class="col-md-12">
                	<div class="container">
						<!-- ROW 1 START -->
						<div id="cod" class="col-md-12 firstline">
							You currently have 2 items(s) in your card
							<br>
						</div>
						<!-- ROW 1 END -->
						<!-- RIGHT COL START -->
						<div class="col-md-9">
							<div class="col-md-12 tablerow">
							<hr>
								<table class="table" id="ctab">
									  <thead>
									    <tr>
									      <th id="imgdis" scope="col">Product</th>
									      <th id="imgdis" scope="col"></th>
									      <th id="imgdis" scope="col">Quality</th>
									      <th id="imgdis" scope="col">Unit Price</th>
									      <th id="imgdis" scope="col">Discount</th>
									      <th id="imgdis" scope="col">Total</th>
									      <th id="imgdis" scope="col"></th>
									    </tr>
									  </thead>
									  <tbody>
									    <tr>
									      <td><img alt="cart_img" src="images/detailsquare1.jpg" class="orderimages"> </td>
									      <td id="imgdis"><a>White Blouse Armani</a></td>
									      <td id="imgdis"><input type="text" value="&ensp;  2" size="1"></td>
									      <td id="imgdis">&#8377 123.00</td>
									      <td id="imgdis">&#8377 0.00</td>
									      <td id="imgdis">&#8377 246.00</td>
									      <td id="imgdis"><a><i class="fas fa-trash-alt"></i></a></td>
									    </tr>
									    <tr>
									      <td id="cart_img"><img alt="cart_img" src="images/detailsquare2.jpg" class="orderimages"> </td>
									      <td id="imgdis"><a>Black Blouse Armani</a></td>
									      <td id="imgdis"><input type="text" value="&ensp;  1" size="1"></td>
									      <td id="imgdis">&#8377 200.00</td>
									      <td id="imgdis">&#8377 0.00</td>
									      <td id="imgdis">&#8377 200.00</td>
									      <td id="imgdis"><a><i class="fas fa-trash-alt"></i></a></td>
									    </tr>
									    <tr>
									      <td colspan="5"><b>Total</b></td>
									      <td id="imgdis"><b>&#8377 446.00</b></td>
									      <td></td>
									    </tr>
									  </tbody>
								</table>
							</div>
							<div class="col-md-12">
								<div class="row panel">
									<div class="col-md-12 panelbtn">
										<button class="nextbutton left1"><i class="fas fa-angle-left"></i>&nbsp;CONTINUE SHOPPING</button>
										<button class="nextbutton right1">PROCEED TO CHECKOUT&nbsp;<i class="fas fa-angle-right"></i></button>
									</div>
								</div>
							</div>
							<br>
							<div class="col-md-3">
									<hr>
									<p class="rec">YOU MAY ALSO LIKE THESE PRODUCTS.<p>
									<hr>
							</div>
							<div class="col-md-3">
								<img class="recimages" src="images/detailsquare1.jpg">
								<p class="recdec" align="center">FUR COAT</p>
									<p align="center">
										&#8377 143.00
								</p>
								<hr>
							</div>
							<div class="col-md-3">
								<img class="recimages" src="images/detailsquare1.jpg">
								<p class="recdec" align="center">FUR COAT</p>
									<p align="center">
										&#8377 143.00
								</p>
								<hr>
							</div>
							<div class="col-md-3">
								<img class="recimages" src="images/detailsquare1.jpg">
								<p class="recdec" align="center">FUR COAT</p>
									<p align="center">
										&#8377 143.00
								</p>
								<hr>
							</div>
						</div>
						<!-- RIGHT COL END -->
						<!-- LEFT COL START -->
						<div class="container">
							<div class="col-md-3">
								<hr class="ordleft">
								<div class="col-md-12 panelbtn sum">
									<h3><b>Order<br>Summary</b></h3>
								</div>
							</div>
							<div class="col-md-3 crt">
								Shipping and additional costs are calculated based on the values you have entered.
								<hr>
							</div>
							<div class="col-md-3 carttext">
								<div class="col-md-8">
									Order Sub Total
								</div>
								<div class="col-md-4">
									<b class="txt">&#8377 446.00</b>
								</div><br>
								<hr>
								<div class="col-md-8">
									shipping &amp; Handling
								</div>
								<div class="col-md-4">
									<b class="txt">&#8377 10.00</b>
								</div><br>
								<hr>
								<div class="col-md-8">
									Tax
								</div>
								<div class="col-md-4">
									<b class="txt">&#8377 0.00</b>
								</div><br>
								<hr>
								<div class="col-md-8">
									<h4><b>Total</b></h4>
								</div>
								<div class="col-md-4">
									<h5><b class="txt">&#8377 456.00</b></h5>
								</div><br>
								<hr>
								<br>
								<div class="col-md-12">
									<hr class="ordleft">
									<div class="col-md-12 panelbtn cpc">
										<h4 class="coupon"><b>COUPON CODE</b></h4>
									</div>
									
								</div>
								<div class="col-md-12 crt">
									If you have a coupon code,please enter it in the box below.
									<br><br>
									<div class="input-group">
			  							<input type="text" class="form-control" aria-describedby="basic-addon2">
			  							<span class="input-group-addon" id="basic-addon2"><i class="fas fa-gift"></i></span>
									</div>
								</div>
							</div>
						</div>
						<!-- LEFT COL END -->
					</div>    
            </div>
        </div> 
       <br><br>
<!-- ----------------------------------------------------------Body End  --------------------------------------------------->
		
		<!-- ROW 3 END -->
		<%@ include file="Footer.html" %>
		<%@ include file="LastRow.html" %>
		
	</body>
</html>