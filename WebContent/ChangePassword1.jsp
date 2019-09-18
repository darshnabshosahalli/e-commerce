<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Change Password</title>
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
                    <hr>
                    <h3><span>CHANGE&nbsp;PASSWORD</span></h3><p></p>
                    <br>
                    <p>If you have any question, please feel free to <a href="Contact.jsp" class="contact">contact us,</a> our customer service centre is working for you 24/7</p><hr>
                    <!--------------------------------- FORM START ------------------------------------->
                    <form action="changepassword" method="post">
                        <div class="form-group">
                            <label for="opwd">Current Password</label>
                            <input type="password" class="form-control" id="opwd" name="oldpass" required>                   
                        </div>
                        <div class="form-group">
                            <label for="npwd">New Password:</label>
                            <input type="password" class="form-control" id="npwd" name="newpass" required>                   
                        </div>
                        <div class="form-group">
                            <label for="cnpwd">Confirm New Password:</label>
                            <input type="password" class="form-control" id="cnpwd" name="renewpass" required>                   
                        </div>
                        <button type="submit" class="btn btn-default"><i class="fas fa-edit"></i>&nbsp;Update</button>
                    </form>
                    <hr><p></p>
                   
                    <!---------------------------------------- CONDITION CHECK STATEMENTS------------------------- -->
<%
						if(request.getAttribute("CHANGEPASSWORD") != null) {
							if((boolean)request.getAttribute("CHANGEPASSWORD")) {
%>
							<div class="alert alert-success">
								Change Password Successful
							</div>
<%
							}
							else {
%>
								<div class="alert alert-danger">
									Change Password Unsuccessful
								</div>
<%
							}

						}
%>
                <!---------------------------------------- CONDITION CHECK STATEMENTS END------------------------- -->
                </div>
            </div> 
       
<!-- ----------------------------------------------------------Body End  --------------------------------------------------->
		
		<!-- ROW 3 END -->
		<%@ include file="Footer.html" %>
		<%@ include file="LastRow.html" %>
		
	</body>
</html>