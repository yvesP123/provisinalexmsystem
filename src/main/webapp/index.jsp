<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Online exam</title>
 <script src="dashboard/js/tinymce/tinymce.min.js"></script>
    <script src="dashboard/js/tinymce/script.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/cms-home.css">
	<link rel="stylesheet" type="text/css" href="css/material-icons.css">
	<link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">

    <link rel="stylesheet" href="css/loginstyle.css">
	<link href="dashboard/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
</head>
<body>

 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"">
			<div class="container">


				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle Navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.php">Online Exam Provision System</a>
				</div>
                 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                    	<li><a href="index.jsp">Home</a></li>
						 <li><a href="registration.jsp">Sign Up</a></li>
						 


                    </ul>
				</div>
				
			</div>
	    </nav>

<br>

<div class="container">


      <div  class="form">
        <form id="contactform" method="POST" action="Signin"> 
          <p class="contact"><label for="name">UserName</label></p> 
          <input id="name" name="username"  pattern="[a-zA-Z'-'\s]*" placeholder="Username" required="" tabindex="1" type="text"> 
          <p class="contact"><label for="name">Password</label></p> 
          <input id="name" name="password" placeholder="Password" required="" tabindex="1" type="Password"> 
           
                 
            <input class="buttom" name="signup" id="submit" tabindex="5" value="Sign in!" type="submit">    <br>
            <a href="registration.jsp">I don't have account</a>
   </form> 
</div>      
</div>

</body>
</html>