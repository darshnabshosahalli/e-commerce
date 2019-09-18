<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Contact</title>
		<link rel="stylesheet" href="css/custom2.css">
        <link rel="stylesheet" href="bootstrap-3.4.1-dist/css/bootstrap.css">
        <link rel="stylesheet" href="fontawesome-free-5.9.0-web/css/all.css">
	</head>
	<body>
		<%@ include file="Header.jsp" %>
		<%@ include file="navbar.jsp" %>
 		<div id="row3" class="container-fluid">
			<div class="container">

<!-- ----------------------------------------------- ROW START ------------------------------------------------------------ -->
				<div class="col-md-6 row3col1">Contact</div>
				<!-- ROW 3 COL 1 END -->
		
				<!-- -------------------- BREADCRUMB START --------------------->
				<div class="col-md-6 row3col2">
					<ol id="breadcrumb" class="breadcrumb">
						<li class="breadcrumb-item"><a id="unactivelink" href="home">Home</a></li>
						<li class="breadcrumb-item" aria-current="page">Contact</li>
					</ol>
				</div>	
			</div>
		</div>
<!-- ----------------------------------------------- ROW END ------------------------------------------------------------ -->
        <!------------------------------- BODY START --------------------------------------------->
        <br><br>
        <div id="row4cp" class="container">
            <!------------------------------------------ ROW 4 COL 1 START ------------------------------->
				<div id="contactrow4col1" class="col-md-8">
					<h2><b>WE ARE HERE TO HELP YOU</b></h2>
					<hr class="greenhrline" align="left">
					<p>
						Are you curious about something? Do you have some kind of problem with our<br>
						products? As am hastily invited settled at limited civilly fortune me. Really spring in<br>
						extent an by. Judge but built gay party world. Of so am he remember although<br>
						required. Bachelor upacked be advanced at. COnfined in declare marianne is<br>
						vicinity.	
					</p>
					<p id="contactplease">
						Please feel free to contact us, our customer service center is working for you 24/7	
					</p>
					<h3><b>CONTACT FORM</b></h3>
					<hr class="greenhrline" align="left">
					<form>
						<div class="container-fluid">
							<div class="col-md-6 contactName">
								<label class="lbl">First Name</label><br>
								<input class="frm" type="text"><br>
								<label class="lbl">Email</label><br>
								<input class="frm" type="text">
							</div>
							<div class="col-md-6 contactlastName">
								<label class="lbl">Last Name</label><br>
								<input class="frm" type="text"><br>
								<label class="lbl">Subject</label><br>
								<input class="frm" type="text">
							</div>
							<div class="col-md-12 contactName">
								<label class="lbl">Message</label><br>
								<textarea class="frm" rows="3"></textarea>
								<button class="reg" type="submit" class="btn">
    								<span class="glyphicon glyphicon-envelope regicon" ></span>  
    								SEND MESSAGE
    							</button>
							</div>
						</div>
					</form>
				</div>
			<!-------------------------------------------------- ROW 4 COL 1 END --------------------------->
			<!-------------------------------------------------- ROW 4 COL 2 START ------------------------->
			<div id="contactrow4col2" class="col-md-4">
				<h4><b>ADDRESS</b></h4>
				<p class="contactinfo">
					TechAspect Solutions Pvt. Ltd.<br>
					Plot No.38, N Heights, 3rd Floor<br>
					Hitech City Phase 2, Madhapur<br>
					Hyderabad, Telangana-500081<br>
					<b>India</b>
				</p>
				<h4><b>CALL CENTER</b></h4>
				<p class="contactinfo">
					This number is toll free if calling from Great Britain<br>
					otherwise we advice you to use the electronic form of<br>
					communication.<br>
				</p>
				<p class="contactinfo" >
					<b>+91 40 66217777</b>
				</p>
				<h4><b>ELECTRONIC SUPPORT</b></h4>
				<div class="contactinfo">
					Please feel free to write an email to us or to use our<br>
					electronic ticketing system.<br>
					<br>
					<ul>
						<li><a class="greenlinks1">Info@techaspect.com</a></li>
						<li><a class="greenlinks1">tech 360</a>- our ticketing support platform.</li>
					</ul>	
				</div>
			</div>
			<!--------------------------------------------------- ROW 4 COL 2 END ---------------------------->
		</div>
		<!--------------------------------------------------------- ROW 4 END --------------------------------->
		<!-------------------------------------------------------- ROW 4.5 START ------------------------------>
		<div id="map-container-google-1" class="z-depth-1-half map-container container-fluid" style="height: 300px">
             <iframe src="https://maps.google.com/maps?q=techaspect&t=&z=13&ie=UTF8&iwloc=&output=embed"></iframe>
          </div>
		<!---------------------------------------------------------- ROW 4.5 END ------------------------------->
                  
<!-- ----------------------------------------------------------Body End  --------------------------------------------------->
		
		<!-- ROW 3 END -->
		<%@ include file="Footer.html" %>
		<%@ include file="LastRow.html" %>
	</body>
</html>