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
					<a class="navbar-brand" href="index.php">Online Provision Exam System</a>
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
        <form id="contactform" method="POST" action="send.jsp"> 
          <p class="contact"><label for="name">Name</label></p> 
          <input id="name" name="name" pattern="[a-zA-Z'-'\s]*" placeholder="First and last name" required type="text"> 
           
          <p class="contact"><label for="email">Email</label></p> 
          <input id="email" name="email" placeholder="example@domain.com" required type="email" > 
            <p class="contact"><label for="email">Phone Number</label></p> 
          <input id="email" name="phone"  placeholder="Phone Number" maxlength="10" required  type="tel"  onkeypress="return onlyNumberKey(event)"> 
                
               
                <p class="contact"><label for="username">UserName</label></p> 
          <input id="username" name="username" pattern="[a-zA-Z'-'\s]*" placeholder="username" required tabindex="2" type="text"> 
           
               <p class="contact"><label for="username">Password</label></p> 
          <input id="username" name="password" placeholder="password" required tabindex="2" type="password"> 
           
               
            <p class="contact"><label for="gender">Gender </label></p> 
            <select class="select-style gender" name="gender">
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            </select><br><br>
    
           
            
            <input class="buttom" name="signup" id="submit" tabindex="5" value="Sign me up!" type="submit">    
   </form> 
</div>      
</div>
<sript>
function onlyNumberKey(evt)
{
var ASIICode=(evt.which)?evt.which : evt.keyCode
if(ASIICode>31 &&(ASIICode<48||ASIICode>57))
return false;
return true;
}
</sript>
</body>
</html>																	