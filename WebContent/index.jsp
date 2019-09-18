<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>TA Digital</title>
		<link rel="stylesheet" href="bootstrap-3.4.1-dist/css/bootstrap.css">
        <link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/custom2.css">
        
	</head>
	<body>
		<%@ include file="Header.jsp" %>
		<%@ include file="navbar.jsp" %>
		<!-- ROWS OF INDEX PAGE START -->
		<!-- carousel START -->
		<div class="indexrow1">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
	    		<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				    <li data-target="#myCarousel" data-slide-to="1"></li>
				    <li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
				    	<img src="images/carosel_1.jpg" alt="Los Angeles" style="height:250px; width:100%;">
				    </div>
			      	<div class="item">
				        <img src="images/carosel_2.jpg" alt="Chicago" style="height:250px; width:100%;">
				     </div>
				     <div class="item">
				        <img src="images/carosel_5.jpg" alt="New york" style="height:250px; width:100%;">
				     </div>
				</div>
				<!-- Left and right controls -->
			    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
			      <span class="glyphicon glyphicon-chevron-left"></span>
			      <span class="sr-only">Previous</span>
			    </a>
			    <a class="right carousel-control" href="#myCarousel" data-slide="next">
			      <span class="glyphicon glyphicon-chevron-right"></span>
			      <span class="sr-only">Next</span>
			    </a>
			</div>
		</div>
		<!-- CAROUSEL ROWS END -->
		<br>
		<!-- DEALS OF THE DAY PANEL START -->
		<div class="content-rows">
			<div class="panel panel-default">
                <div class="panel-body panelrows">
                	<div class="paneltext">
                		Deals of the day
                    	<button class="btn btn-md btn-primary pull-right" id="button-panel" type="submit">View All</button>
                	</div>
                </div>
            </div>
		</div>
		<!-- DEALS OF THE DAY PANEL END -->
		<!-- DEALS OF THE DAY IMAGES START-->
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/shoe1.jpg" alt="Card image" style="width:95%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title"><b>Men's Footwear</b></h4>
				      		<p class="card-text">Upto 60 + Extra 10% off</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/sd1.jpg" alt="Card image" style="width:95%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Memory Cards</b></h4>
				      		<p class="card-text" align="center">Extra 5% off</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/bag1.jpg" alt="Card image" style="width:95%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Laptop Bags</b></h4>
				      		<p class="card-text" align="center">From &#8377; 249</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/bag2.jpg" alt="Card image" style="width:95%;height:228px;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Skybags</b></h4>
				      		<p class="card-text" align="center">Under &#8377; 999 + Extra 5% off</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/laughing-buddha.jpg" alt="Card image" style="width:95%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Men's Footwear</b></h4>
				      		<p class="card-text" align="center">Upto 60 + Extra 10% off</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/casio.jpeg" alt="Card image" style="width:95%;height:225px;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Timex Watches</b></h4>
				      		<p class="card-text" align="center">Under &#8377; 999 + Extra 7% off</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
			</div>
		</div>
		<!-- DEALS OF THE DAY IMAGES END -->
		<!-- FEATURED BRANDS PANEL START -->
		<div class="content-rows">
			<div class="panel panel-default">
                <div class="panel-body panelrows">
                	<div class="paneltext">
                		Featured Brands
                    	<button class="btn btn-md btn-primary pull-right" id="button-panel" type="submit">View All</button>
                	</div>
                </div>
            </div>
		</div>
		<!-- FEATURED BRANDS PANEL END -->
		<!-- FEATURED BRANDS IMAGES START -->
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="col-md-3">
					<img class="bannerimages" src="images/advimg1.jpg">
				</div>
				<div class="col-md-3">
					<img class="bannerimages" src="images/brands_2.jpg">
				</div>
				<div class="col-md-3">
					<img class="bannerimages" src="images/brands_3.jpg">
				</div>
				<div class="col-md-3">
					<img class="bannerimages" src="images/brands_4.jpg">
				</div>
			</div>
		</div>
		<!-- FEATURED BRANDS IMAGES END -->
		<!-- MOBILES NEW LAUNCH PANEL START -->
		<div class="content-rows">
			<div class="panel panel-default">
                <div class="panel-body panelrows">
                	<div class="paneltext">
                		Mobiles New Launch
                    	<button class="btn btn-md btn-primary pull-right" id="button-panel" type="submit">View All</button>
                	</div>
                </div>
            </div>
		</div>
		<!-- MOBILES NEW LAUNCH PANEL END -->
		<!-- MOBILES NEW LAUNCH IMAGES START -->
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/realme2.jpg" alt="Card image">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title"><b>Redmi Note 6 Pro</b></h4>
				      		<p class="card-text">12MP+5MP | 20MP+2MP</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/asuszen.jpg" alt="Card image">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Realme 2</b></h4>
				      		<p class="card-text" align="center">13MP+2MP|8MP Camera</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/asuszenphone.jpg" alt="Card image">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Realme C1</b></h4>
				      		<p class="card-text" align="center">13MP+2MP|5MP Camera</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/iphonex.jpg" alt="Card image">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Nokia 6.1 Plus</b></h4>
				      		<p class="card-text" align="center">16MP+5MP Camera</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/realmec1.jpg" alt="Card image">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Lenovo A5</b></h4>
				      		<p class="card-text" align="center">16MP | 8MP Camera</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/nokia6.1plus.jpg" alt="Card image">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Redmi Note 5 Pro</b></h4>
				      		<p class="card-text" align="center">12MP + 5MP Camera</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
			</div>
		</div>
		<!-- MOBILES NEW LAUNCH IMAGES END -->
		<!-- HOME DECORE RANGE PANEL START -->
		<div class="content-rows">
			<div class="panel panel-default">
                <div class="panel-body panelrows">
                	<div class="paneltext">
                		Home Decore Range
                    	<button class="btn btn-md btn-primary pull-right" id="button-panel" type="submit">View All</button>
                	</div>
                </div>
            </div>
		</div>
		<!-- HOME DECORE RANGE PANEL END -->
		<!-- HOME DECORE RANGE IMAGES START -->
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/clock.jpg" alt="Card image" style="width:100%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title"><b>Decorative Clocks</b></h4>
				      		<p class="card-text">Minimum 50% off</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/decbot1.jpg" alt="Card image" style="width:100%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Decorative Bottle</b></h4>
				      		<p class="card-text" align="center">From &#8377; 199</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/decorativebottles.jpg" alt="Card image" style="width:100%;height:228px;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Feng Shui Showpieces</b></h4>
				      		<p class="card-text" align="center">Under &#8377; 999</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/hookah.jpg" alt="Card image" style="width:100%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Wall Shelves</b></h4>
				      		<p class="card-text" align="center">Upto 80% off</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/hookahs.jpg" alt="Card image" style="width:100%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Laser Lights</b></h4>
				      		<p class="card-text" align="center">Upto 60% off</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/wall-shelves.jpg" alt="Card image" style="width:100%; height:228px;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>hookah And Bongs</b></h4>
				      		<p class="card-text" align="center">Under &#8377; 599</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
			</div>
		</div>
		<!-- HOME DECORE RANGE IMAGES END -->
		<!-- FASHION ACCESSORIES PANEL START -->
		<div class="content-rows">
			<div class="panel panel-default">
                <div class="panel-body panelrows">
                	<div class="paneltext">
                		Fashion Range
                    	<button class="btn btn-md btn-primary pull-right" id="button-panel" type="submit">View All</button>
                	</div>
                </div>
            </div>
		</div>
		<!-- FASHION ACCESSORIES PANEL END -->
		<!-- FASHION ACCESSORIES IMAGES START -->
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/sunglasses.jpg" alt="Card image" style="width:100%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title"><b>RayBan Shades</b></h4>
				      		<p class="card-text">20-60% off</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/rayban.jpg" alt="Card image" style="width:100%;height:70%; padding-bottom:48%;padding-top:40%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Woodland Belt</b></h4>
				      		<p class="card-text" align="center">Top Rated</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/shoe2.jpg" alt="Card image" style="width:100%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Casio Maxima</b></h4>
				      		<p class="card-text" align="center">Upto 50% off</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/skybags.jpg" alt="Card image" style="width:100%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Casio Fastrack</b></h4>
				      		<p class="card-text" align="center">10-50% off</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/shoe2.jpeg" alt="Card image" style="width:100%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Titan Watch</b></h4>
				      		<p class="card-text" align="center">20-80% off</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="card">
						<img class="card-img-top" src="images/woodland.jpg" alt="Card image" style="width:100%;">
				    	<div class="card-body" align="center">
				      		<h4 class="card-title" align="center"><b>Fastrack</b></h4>
				      		<p class="card-text" align="center">Under &#8377; 999</p>
				      		<a href="#" class="btn btn-primary viewbutton">view</a>
				    	</div>
					</div>
				</div>
			</div>
		</div>
		<!-- FASHION ACCESSORIES IMAGES END -->
		<!-- ROWS Of INDEX PAGE END -->
		<%@ include file="modal.html" %>
		<%@ include file="Footer.html" %>
		<%@ include file="LastRow.html" %>
		
		
	</body>
</html>