<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Online exam</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <style>
  .timer{font-size:60px;
  }
  </style>
</head>
<% 
                                        response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
                                        String user=(String)session.getAttribute("username");
                                        if(user==null){
                                        	
                                        	response.sendRedirect("index.jsp");
                                        }
                                        else {
                                       %>
<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Online exam Provisional System</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        
       
        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <span class="d-none d-md-block dropdown-toggle ps-2">${username}</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                           <li>
               <form action="Logout" method="get">
            <input type="submit" class="dropdown-item d-flex align-items-center" value ="Signout"></form>
            
            </li>
            

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed" href="index.html">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

      </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Gukora Ikizamini</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
          <li class="breadcrumb-item">Ikizamini</li>
         
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Kora Ikizamini</h5>

              <!-- General Form Elements -->
              <form action="check.jsp" method="post">
                <h5 class="card-title">1. Itara ndanga nyuma rigomba gushyirwa</h5>
                  <fieldset class="row mb-3">
                
                  <div class="col-sm-10">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="one" id="gridRadios1" value="A" >
                      <label class="form-check-label" for="gridRadios1">
                       A.Ahegereye inguni y’ubumoso bw’ikinyanyabiziga
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="one" id="gridRadios2" value="B">
                      <label class="form-check-label" for="gridRadios2">
                        B.Ahegereye inguni y’iburyo bw’ikinyanyabiziga
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="one" id="gridRadios2" value="C">
                      <label class="form-check-label" for="gridRadios2">
                        C.Ku kinyabiziga inyuma
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="one" id="gridRadios2" value="D">
                      <label class="dform-check-label" for="gridRadios2">
                       D.Nta gisubizo kirimo
                      </label>
                    </div>
                   
                  </div>
                </fieldset>
                <h5 class="card-title">2.iyo byanze bikunze kimwe mu binyabiziga bigiye kubisikana kigomba gusubira inyuma abayobozi batagomba gusubira inyuma ni:</h5>
                  <fieldset class="row mb-3">
                
                  <div class="col-sm-10">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="two" id="gridRadios1" value="A" >
                      <label class="form-check-label" for="gridRadios1">
                       A.Abatwaye ibinyabiziga bito bahuye n’abatwaye ibini
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="two" id="gridRadios2" value="B">
                      <label class="form-check-label" for="gridRadios2">
                        B.Abatwaye inyabiziga bidakomatanye bahuye n’abatwaye ibikomatanye
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="two" id="gridRadios2" value="C">
                      <label class="form-check-label" for="gridRadios2">
                        C.Abatwaye ibyikoreye imizigo bahuye n’ abatwaye ibinyabiziga bitwara abantu
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="two" id="gridRadios2" value="D">
                      <label class="dform-check-label" for="gridRadios2">
                       D.Ntabatagomba gusubira inyuma mubavuzwe
                      </label>
                    </div>
                   
                  </div>
                </fieldset>
                <h5 class="card-title">3. yo ntayindi mpamvu ihari, Iyo ibinyabiziga bigomba kubisikana ari ibyo mu rwego rumwe ni nde ugombagusubira inyuma</h5>
                  <fieldset class="row mb-3">
                
                  <div class="col-sm-10">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="three" id="gridRadios1" value="A" >
                      <label class="form-check-label" for="gridRadios1">
                       A.Ni umuyobozi wikinyabiziga kizamuka 
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="three" id="gridRadios2" value="B">
                      <label class="form-check-label" for="gridRadios2">
                        B.Ni umuyobozi wikinyabiziga kimanuka
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="three" id="gridRadios2" value="C">
                      <label class="form-check-label" for="gridRadios2">
                        C.Basabwa bose gusubira inyuma
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="three" id="gridRadios2" value="D">
                      <label class="dform-check-label" for="gridRadios2">
                       D.Ntagisubizo kirimo
                      </label>
                    </div>
                   
                  </div>
                </fieldset>
                <h5 class="card-title">4. Ikinyabizirwa kiba nta kumirwa</h5>
                  <fieldset class="row mb-3">
                
                  <div class="col-sm-10">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="four" id="gridRadios1" value="A" >
                      <label class="form-check-label" for="gridRadios1">
                       A.Iyo gitwaye abakozi babifitiye ububasha
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="four" id="gridRadios2" value="B">
                      <label class="form-check-label" for="gridRadios2">
                        B.Iyo kiri mu kazi
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="four" id="gridRadios2" value="C">
                      <label class="form-check-label" for="gridRadios2">
                        C.Igihe cyose ari kizima
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="four" id="gridRadios2" value="D">
                      <label class="dform-check-label" for="gridRadios2">
                       D.2 na 3 ni ibisubizo
                      </label>
                    </div>
                   
                  </div>
                </fieldset>
                <h5 class="card-title">5. Umuyobozi w’ikinyabiziga akurikiza ibyapa bishinze ku ruhande</h5>
                  <fieldset class="row mb-3">
                
                  <div class="col-sm-10">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="five" id="gridRadios1" value="A" >
                      <label class="form-check-label" for="gridRadios1">
                       A.Rw’iburyo
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="five" id="gridRadios2" value="B">
                      <label class="form-check-label" for="gridRadios2">
                        B.Rw’ubumoso
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="five" id="gridRadios2" value="C">
                      <label class="form-check-label" for="gridRadios2">
                        C.Iburyo cyangwa I bumuso bwe
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="five" id="gridRadios2" value="D">
                      <label class="dform-check-label" for="gridRadios2">
                       D.Ntagisubizo kirimo
                      </label>
                    </div>
                   
                  </div>
                </fieldset>
               
                <div class="row mb-3">
                  
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary" id="ohereza">Ohereza</button>
                  </div>
                </div>

              </form><!-- End General Form Elements -->

            </div>
          </div>

        </div>

       <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <span id="countdown" class="timer"></span>
              
<script>
var seconds=30;
function secondpassed(){
	var minute=Math.round((seconds-30)/60);
	var remainingsecond=seconds % 60;
	var win;
	if(remainingsecond<10)
	{
		remainingsecond= "0" + remainingsecond;
		
	}
	document.getElementById('countdown').innerHTML=minute + ":"+remainingsecond;
	if(seconds == 0 )
	{
		clearInterval(countdownTimer);
		
		document.querySelector('#ohereza').disabled=true;
		
		win=open("auto-submit.jsp");
		
  
}
	
	else
		{
		seconds--;
		}
}
var countdownTimer=setInterval('secondpassed()',1000);

</script>
              
            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>YvesMade</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">Ira</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/timer.js"></script>
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.min.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>
<%} %>
</html>