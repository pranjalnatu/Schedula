<%-- 
    Document   : index
    Created on : Mar 14, 2014, 10:09:20 AM
    Author     : sanoussysangary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Create an Advisor Account - Schedula</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/stylesheet.css" rel="stylesheet">

</head>
<body class="main1">
	<div class="container">
		<div class="row">
			<div class="col-sm-offset-5">
				<div class=" col-sm-5 a">
					<center>
						<h3>Create an account</h3>
					</center>
					<br>
					<form action="/sign_upAdvisor">
						<div class="form-group">
						<span id="nameInfo"></span>
							<input name="First_Name" type="text" id="firstName" class="form-control"
								placeholder="First Name">
						</div>
						
						<div class="form-group">
							<input name="Last_Name" type="text" class="form-control"
								placeholder="Last Name">
						</div>
						<div class="form-group">
							<input name="Advising_Major" type="text" class="form-control"
								placeholder="Advising Major">
						</div>

						<div class="form-group">
						<span id="emailInfo"></span>
							<input name="Id" type="email" id="email" class="form-control"
								placeholder="SBU Email ID">
						</div>
						
						<div class="form-group">
						<span id="passInfo"></span>
							<input name="Password" type="password" id="pass" class="form-control"
								placeholder="Password">
						</div>
						
						<div class="form-group">
							<input name="Confirm" type="password" class="form-control"
								placeholder="Confirm Password">
						</div>
										
						<div class="form-group">
							<input name="Phone" type="text" class="form-control"
								placeholder="Phone">
						</div>
						<center>
							<button type="submit" class="btn  button">Submit</button>
						</center>
					</form>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="pull-right">
			<a href="Schedula_Help.pdf" class="link1">Help</a>&nbsp;&nbsp; <a
				href="Author.html" class="link1">Author</a>&nbsp;&nbsp;
		</div>
	</footer>

	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/validation.js"></script>
       
</body>

</html>
