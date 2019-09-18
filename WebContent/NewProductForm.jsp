<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>New Product Form</title>
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
				<div class="col-md-6 row3col1">New Product Form</div>
				<!-- ROW 3 COL 1 END -->
		
				<!-- -------------------- BREADCRUMB START --------------------->
				<div class="col-md-6 row3col2">
					<ol id="breadcrumb" class="breadcrumb">
						<li class="breadcrumb-item"><a id="unactivelink" href="home"> Vendor Home</a></li>
						<li class="breadcrumb-item" aria-current="page">New Product Form</li>
					</ol>
				</div>	
			</div>
		</div>
<!-- ----------------------------------------------- ROW END ------------------------------------------------------------ -->
        <!------------------------------- BODY START --------------------------------------------->
        <br><br>
        <div id="row4cp" class="container">
           		<!-- ROW 3 END -->
				<!-- ROWS OF PAGE NEW PRODUCT START -->
				<!-- ROW 1 START -->
				<div class="container">
					<div class="col-md-12">
						<h3>Add New Product to the Inventory</h3>
						<hr>	
					</div>
				</div>
				<!-- ROW 1 END -->
				<!-- ROW 2 START -->
				<form>
					<div class="container">
						<!-- ROW 2 ROW 1 START -->
						<div id="gi" class="col-md-12">
							<h3><b>GENERAL INFORMATION</b></h3>
							<hr class="underline" align="left">
						</div>
						<!-- ROW 2 ROW 1 END -->
						<!-- ROW 2 ROW 2 START -->
						<div class="row">
							<div class="col-md-4">
								<label class="lbl">Name</label><br>
								<input type="text" class="frm">
							</div>
							<div class="col-md-4">
								<label class="lbl">Price in Rs</label><br>
								<input type="text" class="frm">
							</div>
							<div class="col-md-4">
								<label class="lbl">Short Description</label><br>
								<textarea class="frm"></textarea>
							</div>
						</div>
						<!-- ROW 2 ROW 2 END -->
						<!-- ROW 2 ROW 3 START -->
						<div class="row">
							<div class="col-md-6">
								<label class="lbl">Category</label><br>
								<div class="dropdown">
									<button class="btn btn-default dropdown-toggle frm" type="button" data-toggle="dropdown">
										Electronics
		    							<span class="caret"></span>
		    						</button>
									<ul class="dropdown-menu">
		      							<li><a href="#">HTML</a></li>
		      							<li><a href="#">CSS</a></li>
		      							<li><a href="#">JavaScript</a></li>
		    						</ul>
								</div>
							</div>
							<div class="col-md-6">
								<label class="lbl">Sub Category</label><br>
								<div class="dropdown">
									<button class="btn btn-default dropdown-toggle frm" type="button" data-toggle="dropdown">
										Mobiles
		    							<span class="caret"></span>
		    						</button>
									<ul class="dropdown-menu">
		      							<li><a href="#">HTML</a></li>
		      							<li><a href="#">CSS</a></li>
		      							<li><a href="#">JavaScript</a></li>
		    						</ul>
								</div>
							</div>
						</div>
						<!-- ROW 2 ROW 3 END -->
						<!-- ROW 2 ROW 4 START -->
						<div class="row">
							<div class="col-md-4">
								<label class="lbl">
									Quantity	
								</label><br>
								<input type="text" class="frm" style="border: 1px solid #808080">
							</div>
							<div class="col-md-4">
								<label class="lbl">
									Image 1	
								</label><br>
								<input type="file" class="frm" style="border: 1px solid #808080">
							</div>
							<div class="col-md-4">
								<label class="lbl">
									Image 2	
								</label><br>
								<input type="file" class="frm" style="border: 1px solid #808080">
							</div>
						</div>
						<!-- ROW 2 ROW 4 END -->
						<!-- ROW 2 ROW 5 START -->
						<div class="row last">
							<div class="col-md-4">
								<label class="lbl">
									Image 3	
								</label><br>
								<input type="file" class="frm" style="border: 1px solid #808080">
							</div>
							<div class="col-md-4">
								<label class="lbl">
									Image 4	
								</label><br>
								<input type="file" class="frm" style="border: 1px solid #808080">
							</div>
							<div class="col-md-4">
								<label class="lbl">
									Image 5	
								</label><br>
								<input type="file" class="frm" style="border: 1px solid #808080">
							</div>
						</div>
						<!-- ROW 2 ROW 5 END -->
						<hr>
					</div>
				
				<!-- ROW 2 END -->
				<!-- ROW 3 START -->
				<div class="container">
					<!-- ROW 3 ROW 1 START -->
					<div id="heading" class="col-md-12">
						<h3><b>PRODUCT DESCRIPTION</b></h3>
						<hr class="underline" align="left">
					</div>
					<!-- ROW 3 ROW 1 END -->
					<!-- ROW 3 ROW 2 START -->
					<div class="col-md-6">
						<label class="lbl">Description 1 Title</label><br>
						<input type="text" class="frm">
					</div> 
					<div class="col-md-6">
						<label class="lbl">Description 1 Content</label><br>
						<textarea class="frm"></textarea>
					</div>
					<!-- ROW 3 ROW 2 END -->
					<!-- ROW 3 ROW 3 START -->
					<div class="col-md-6">
							<label class="lbl">Description 2 Title</label><br>
							<input type="text" class="frm">
					</div> 
					<div class="col-md-6">
							<label class="lbl">Description 2 Content</label><br>
							<textarea class="frm"></textarea>
					</div>
					<!-- ROW 3 ROW 3 END -->
					<!-- ROW 3 ROW 4 START -->
					<div class="col-md-6">
							<label class="lbl">Description 3 Title</label><br>
							<input type="text" class="frm">
					</div> 
					<div class="col-md-6">
							<label class="lbl">Description 3 Content</label><br>
							<textarea class="frm"></textarea>
					</div>
					<!-- ROW 3 ROW 4 END -->
					<!-- ROW 3 ROW 5 START -->
					<div class="col-md-6">
							<label class="lbl">Description 4 Title</label><br>
							<input type="text" class="frm">
					</div> 
					<div class="col-md-6">
							<label class="lbl">Description 4 Content</label><br>
							<textarea class="frm"></textarea>
					</div>
					<!-- ROW 3 ROW 5 END -->
					<!-- ROW 3 ROW 6 START -->
					<div class="col-md-6">
							<label class="lbl">Description 5 Title</label><br>
							<input type="text" class="frm">
					</div> 
					<div class="col-md-6">
							<label class="lbl">Description 5 Content</label><br>
							<textarea class="frm"></textarea>
					</div>
					<!-- ROW 3 ROW 6 END -->
					<!-- ROW 3 ROW 7 START -->
					<div class="col-md-6">
							<label class="lbl">Description 6 Title</label><br>
							<input type="text" class="frm">
					</div> 
					<div class="col-md-6">
							<label class="lbl">Description 6 Content</label><br>
							<textarea class="frm"></textarea>
					</div>
					<!-- ROW 3 ROW 7 END -->
					<!-- ROW 3 ROW 8 START -->
					<div class="col-md-6">
							<label class="lbl">Description 7 Title</label><br>
							<input type="text" class="frm">
					</div> 
					<div class="col-md-6">
							<label class="lbl">Description 7 Content</label><br>
							<textarea class="frm"></textarea>
					</div>
					<!-- ROW 3 ROW 8 END -->
					<!-- ROW 3 ROW 9 START -->
					<div class="col-md-6">
							<label class="lbl">Description 8 Title</label><br>
							<input type="text" class="frm">
					</div> 
					<div class="col-md-6">
							<label class="lbl">Description 8 Content</label><br>
							<textarea class="frm"></textarea>
					</div>
					<!-- ROW 3 ROW 9 END -->
					<!-- ROW 3 ROW 10 START -->
					<div class="col-md-6">
							<label class="lbl">Description 9 Title</label><br>
							<input type="text" class="frm">
					</div> 
					<div class="col-md-6">
							<label class="lbl">Description 9 Content</label><br>
							<textarea class="frm"></textarea>
					</div>
					<!-- ROW 3 ROW 10 END -->
					<!-- ROW 3 ROW 11 START -->
					<div class="col-md-6">
							<label class="lbl">Description 10 Title</label><br>
							<input type="text" class="frm">
					</div> 
					<div class="col-md-6">
							<label class="lbl">Description 10 Content</label><br>
							<textarea class="frm"></textarea>
					</div>
					<!-- ROW 3 ROW 11 END -->
					<!-- ROW 3 ROW 12 START -->
					<div class="col-md-12">
						<h3><b>PRODUCT SPECIFICATION</b></h3>
						<hr class="underline" align="left">
					</div>
					<!-- ROW 3 ROW 12 END -->
					<!-- ROW 3 ROW 13 START -->
					<div class="col-md-12">
							<h4><b>GENERAL</b></h4>
					</div>
					<!-- ROW 3 ROW 13 END -->
					<!-- ROW 3 ROW 14 START -->
					<div class="col-md-6">
							<label class="lbl">In the box</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-6">
							<label class="lbl">Model Number</label><br>
							<input type="text" class="frm">
					</div>
					<!-- ROW 3 ROW 14 END -->
					<!-- ROW 3 ROW 15 START -->
					<div class="col-md-6">
							<label class="lbl">Model Name</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-6">
							<label class="lbl">Color</label><br>
							<input type="text" class="frm">
					</div>
					<!-- ROW 3 ROW 15 END -->
					<!-- ROW 3 ROW 16 START -->
					<div class="col-md-4">
							<label class="lbl">Browse Type</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">SIM Type</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Touch Screen</label><br>
							<input type="text" class="frm">
					</div>
					<!-- ROW 3 ROW 16 END -->
					<!-- ROW 3 ROW 17 START -->
					<div class="col-md-12">
							<h4><b>DISPLAY FEATURES</b></h4>
					</div>
					<!-- ROW 3 ROW 17 END -->
					<!-- ROW 3 ROW 18 START -->
					<div class="col-md-6">
							<label class="lbl">Display Size</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-6">
							<label class="lbl">Resolution</label><br>
							<input type="text" class="frm">
					</div>
					<!-- ROW 3 ROW 18 END -->
					<!-- ROW 3 ROW 19 START -->
					<div class="col-md-4">
							<label class="lbl">Resolution Type</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Color</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Display Colors</label><br>
							<input type="text" class="frm">
					</div>
					<!-- ROW 3 ROW 19 END -->
					<!-- ROW 3 ROW 20 START -->
					<div class="col-md-12">
							<h4><b>OS &amp; PROCESSOR FEATURES</b></h4>
					</div>
					<!-- ROW 3 ROW 20 END -->
					<!-- ROW 3 ROW 21 START -->
					<div class="col-md-4">
							<label class="lbl">Operating System</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Processor Type</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Processor Core</label><br>
							<input type="text" class="frm">
					</div>
					<!-- ROW 3 ROW 21 END -->
					<!-- ROW 3 ROW 22 START -->
					<div class="col-md-4">
							<label class="lbl">Primary Clock Speed</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Secondary Clock Speed</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Operating Frequency</label><br>
							<input type="text" class="frm">
					</div>
					<!-- ROW 3 ROW 22 END -->
					<!-- ROW 3 ROW 23 START -->
					<div class="col-md-12">
							<h4><b>MEMORY &amp; STORAGE FEATURES</b></h4>
					</div>
					<!-- ROW 3 ROW 23 END -->
					<!-- ROW 3 ROW 24 START -->
					<div class="col-md-6">
							<label class="lbl">Internal Storage</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-6">
							<label class="lbl">Ram</label><br>
							<input type="text" class="frm">
					</div>
					<!-- ROW 3 ROW 24 END -->
					<!-- ROW 3 ROW 25 START -->
					<div class="col-md-4">
							<label class="lbl">Expandable Storage</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Supported Memory Card Type</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Call Log Memory</label><br>
							<input type="text" class="frm">
					</div>
					<!-- ROW 3 ROW 25 END -->
					<!-- ROW 3 ROW 26 START -->
					<div class="col-md-12">
							<h4><b>CAMERA FEATURES</b></h4>
					</div>
					<!-- ROW 3 ROW 26 END -->
					<!-- ROW 3 ROW 27 START -->
					<div class="col-md-4">
							<label class="lbl">Primary Camera Available</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Primary Camera</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Primary Camera Features</label><br>
							<textarea class="frm"></textarea>
					</div>
					<!-- ROW 3 ROW 27 END -->
					<!-- ROW 3 ROW 28 START -->
					<div class="col-md-4">
							<label class="lbl">Secondary Camera Available</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Secondary Camera</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Secondary Camera Features</label><br>
							<input type="text" class="frm"></input>
					</div>
					<!-- ROW 3 ROW 28 END -->
					<!-- ROW 3 ROW 29 START -->
					<div class="col-md-4">
							<label class="lbl">Flash</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">HD Recording</label><br>
							<input type="text" class="frm">
					</div>
					<div class="col-md-4">
							<label class="lbl">Full HD Recording</label><br>
							<input type="text" class="frm"></input>
					</div>
					<!-- ROW 3 ROW 29 END -->
					<!-- ROW 3 ROW 30 START -->
					<div class="col-md-12">
							<h4><b>CALL FEATURES</b></h4>
					</div>
					<!-- ROW 3 ROW 30 END -->
					<!-- ROW 3 ROW 31 START -->
					<div class="col-md-12">
							<label class="lbl">Phone Book</label><br>
							<input type="text" class="frm"></input>
					</div>
					<!-- ROW 3 ROW 31 END -->
					<!-- ROW 3 ROW 32 START -->
					<div class="col-md-12">
							<h4><b>CONNECTIVITY FEATURES</b></h4>
					</div>
					<!-- ROW 3 ROW 32 END -->
					<!-- ROW 3 ROW 33 START -->
					<div class="col-md-4">
							<label class="lbl">Network Type</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-4">
							<label class="lbl">Supported Networks</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-4">
							<label class="lbl">Internet Connectivity</label><br>
							<input type="text" class="frm"></input>
					</div>
					<!-- ROW 3 ROW 33 END -->
					<!-- ROW 3 ROW 34 START -->
					<div class="col-md-4">
							<label class="lbl">3G</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-4">
							<label class="lbl">GPRS</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-4">
							<label class="lbl">Pre Installed Browser</label><br>
							<input type="text" class="frm"></input>
					</div>
					<!-- ROW 3 ROW 34 END -->
					<!-- ROW 3 ROW 35 START -->
					<div class="col-md-4">
							<label class="lbl">Bluetooth Support</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-4">
							<label class="lbl">Bluetooth Version</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-4">
							<label class="lbl">Wi-Fi</label><br>
							<input type="text" class="frm"></input>
					</div>
					<!-- ROW 3 ROW 35 END -->
					<!-- ROW 3 ROW 36 START -->
					<div class="col-md-3">
							<label class="lbl">Wi-Fi Version</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-3">
							<label class="lbl">NFC</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-3">
							<label class="lbl">USB Connectivity</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-3">
							<label class="lbl">Audio Jack</label><br>
							<input type="text" class="frm"></input>
					</div>
					<!-- ROW 3 ROW 36 END -->
					<!-- ROW 3 ROW 37 START -->
					<div class="col-md-12">
							<h4><b>OTHER DETAILS</b></h4>
					</div>
					<!-- ROW 3 ROW 37 END -->
					<!-- ROW 3 ROW 38 START -->
					<div class="col-md-3">
							<label class="lbl">Smart Phone</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-3">
							<label class="lbl">Sim Size</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-3">
							<label class="lbl">Removable Battery</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-3">
							<label class="lbl">SMS</label><br>
							<input type="text" class="frm"></input>
					</div>
					<!-- ROW 3 ROW 38 END -->
					<!-- ROW 3 ROW 39 START -->
					<div class="col-md-4">
							<label class="lbl">Sensors</label><br>
							<textarea class="frm"></textarea>
					</div>
					<div class="col-md-4">
							<label class="lbl">Other Features</label><br>
							<textarea class="frm"></textarea>
					</div>
					<div class="col-md-4">
							<label class="lbl">Important Apps</label><br>
							<input type="text" class="frm"></input>
					</div>
					<!-- ROW 3 ROW 39 END -->
					<!-- ROW 3 ROW 40 START-->
					<div class="col-md-12">
							<h4><b>MULTIMEDIA FEATURES</b></h4>
					</div>
					<!-- ROW 3 ROW 40 END -->
					<!-- ROW 3 ROW 41 START -->
					<div class="col-md-6">
							<label class="lbl">Audio Formats</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-6">
							<label class="lbl">Video Formats</label><br>
							<input type="text" class="frm"></input>
					</div>
					<!-- ROW 3 ROW 41 END -->
					<!-- ROW 3 ROW 42 START-->
					<div class="col-md-12">
							<h4><b>BATTERY &amp; POWER FEATURES</b></h4>
					</div>
					<!-- ROW 3 ROW 42 END -->
					<!-- ROW 3 ROW 43 START -->
					<div class="col-md-6">
							<label class="lbl">Battery Capacity</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-6">
							<label class="lbl">Battery Type</label><br>
							<input type="text" class="frm"></input>
					</div>
					<!-- ROW 3 ROW 43 END -->
					<!-- ROW 3 ROW 44 START-->
					<div class="col-md-12">
							<h4><b>DIMENSIONS</b></h4>
					</div>
					<!-- ROW 3 ROW 44 END -->
					<!-- ROW 3 ROW 45 START -->
					<div class="col-md-3">
							<label class="lbl">Width</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-3">
							<label class="lbl">Height</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-3">
							<label class="lbl">Depth</label><br>
							<input type="text" class="frm"></input>
					</div>
					<div class="col-md-3">
							<label class="lbl">Weight</label><br>
							<input type="text" class="frm"></input>
					</div>
					<!-- ROW 3 ROW 45 END -->
					<!-- ROW 3 ROW 46 START -->
					<div class="col-md-12">
							<h4><b>WARRANTY</b></h4>
					</div>
					<!-- ROW 3 ROW 46 END -->
					<!-- ROW 3 ROW 47 START -->
					<div class="col-md-12">
							<label class="lbl">Warranty Summary</label><br>
							<textarea class="frm"></textarea>
					</div>
					<!-- ROW 3 ROW 47 END -->
					<div id="savepassword" class="col-md-12">
						<button id="saveButton" class="reg" type="submit" class="btn">
		    					<span id="regicon" class="far fa-save" ></span>  
		    						Save 
		    			</button>
		    		</div>
				</div>
				</form>
				<!-- ROW 3 END -->
				<!-- ROWS OF PAGE NEW PRODUCT END -->               
            </div>
        <br><br> 
       
<!-- ----------------------------------------------------------Body End  --------------------------------------------------->
		
		<!-- ROW 3 END -->
		<%@ include file="Footer.html" %>
		<%@ include file="LastRow.html" %>
		
	</body>
</html>