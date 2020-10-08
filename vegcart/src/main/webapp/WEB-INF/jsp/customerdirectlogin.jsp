 <!DOCTYPE html>
  <%@page isELIgnored="false" language="java" pageEncoding="ISO-8859-1"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
        <link rel="stylesheet" type="text/css" href="assets/vendor/owl-slider.css"/>
        <link rel="stylesheet" type="text/css" href="assets/vendor/settings.css"/>
        <link rel="shortcut icon" href="assets/images/favicon.png" />
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,500,700,300' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="assets/js/jquery-3.2.0.min.js"></script>
                  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <title>Login Page</title>
    </head>
    <body>
    <div class="awe-page-loading">
         <div class="awe-loading-wrapper">
            <div class="awe-loading-icon">
               <img src="assets/images/logo.png" alt="images">
            </div>
            <div class="progress">
               <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
         </div>
      </div>    
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content popup-search">
                <button type="button" class="close" data-dismiss="modal"><i class="fa fa-times" aria-hidden="true"></i></button>
                <div class="modal-body">
                    <div class="input-group">
                        <input type="text" class="form-control control-search" placeholder="Search and hit enter...">
                        <button class="button_search" type="button">Search</button>
                    </div><!-- /input-group -->

                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
    <!-- End pushmenu -->
    <div class="wrappage">
        <header id="header" class="header-v3 header-v2">
            <div id="topbar" class="topbar-ver2">
               <!--  <div class="container container-ver2">
                    <div class="inner-topbar box">
                        <div class="float-left">
                            <p><img src="assets/images/icon-phone-header.png.png" alt="icon"> Call us <span> 070-7782-9137</span></p>
                        </div>
                        <div class="float-right align-right">
                            <div class="hover-menu">
                                <a class="acc" href="#" title="USD"><img src="assets/images/icon-user-header.png" alt="icon">MY ACCOUNT</a>
                                <ul class="list-menu">
                                    <li><a href="#" title="USD">LOGIN</a></li>
                                    <li><a href="#" title="VND">REGISTER</a></li>
                                </ul>
                            </div>
                            End hover-menu
                        </div>
                    </div>
                </div> -->
                <!-- End container -->
            </div>
            <!-- End topbar -->
            <div class="header-top">
                <div class="container container-ver2">
                    <div class="box">
                        <p class="icon-menu-mobile"><i class="fa fa-bars" ></i></p>
                        <div class="logo"><a href="#" title="Uno">
                            <img src="assets/images/logo-v2.png" alt="images">
                        </a></div>
                        <div class="logo-mobile"><a href="#" title="Xanadu"><img src="assets/images/logo-v2.png" alt="Xanadu-Logo"></a></div>

                        <div class="box-right">
                           
                        </div>
  
                    </div>
                </div>
                <!-- End container -->
            </div>
            <!-- End header-top -->
        </header><!-- /header -->
        <div class="container">
            <div class="banner-header banner-lbook3 space-30">
                <img src="assets/images/banner-product-checkout.jpg" alt="Banner-header">
                <div class="text">
                    <h3>Login/Register</h3>
                    <p><a href="#" title="Home">Home</a><i class="fa fa-caret-right"></i>Login</p>
                </div>
            </div>
        </div>
        <!-- End banner -->
        <div class="container container-ver2">
            <div class="page-login box space-50">
                <div class="row">
                 <div class="col-md-12 sign-in space-30">
                        <h3>Sign in</h3>
                        <p>Hello, welcome to your account.</p>
                         <!--   <div class="social space-30 box">
                            <a class="float-left" href="#" title="facebook">
                                <i class="fa fa-facebook"></i>
                                SIGN IN WITH FACEBOOK
                            </a>
                            <a class="float-right" href="#" title="TWITTER">
                                <i class="fa fa-twitter"></i>
                                SIGN IN WITH TWITTER
                            </a>
                        </div>
                        End social -->
                        <form  method="POST" action="logindirectcustomer" class="needs-validation" novalidate>
                            <div class="group box space-20">
                                <label class="control-label" for="inputemail">Mobile <span class="color">*</span></label>
                                <input class="form-control" type="text" placeholder="Mobile" id="mobile" name="mobile" pattern=".{10}" required>
                                  <div class="valid-feedback">Valid.</div>
      							 <div class="invalid-feedback">Mobile number should be in 10 digits.</div>
                            </div>
                            <div class="group box">
                                <label class="control-label" for="inputemail">Password <span class="color">*</span></label>
                                <input class="form-control" type="password" placeholder="Password" id="password" name="password" required> 
                                  <div class="valid-feedback">Valid.</div>
      										<div class="invalid-feedback">Please fill out this field.</div>
                            </div>
                            <!-- <div class="remember">
                                <input id="remeber" type="checkbox" name="check" value="remeber">
                                <label for="remeber" class="label-check">remember me!</label>
                                <a class="help" href="#" title="help ?">Fogot your password?</a>   
                            </div> -->
                            <br>
                            <input type="hidden" name="checkoutItems" id="logincheckoutitems" value="${checkoutItems}">           
                            <button type="submit" class="link-v1 rt" style="margin-top:10px;">LOGIN NOW</button>
                            <a href="#" class="link-v1 rt" onclick="openRegistrationForm();">REGISTER NOW</a>
                            
                        </form>
                        
                     </div>
                     
                     <div class="col-md-12 sign-in space-30">
                     <form action="registercustomer" class="form-horizontal" method="POST" id="registrationform">
                          <input type="hidden" name="checkoutitems" id="registercheckoutitems" value="${checkoutItems}">
                        </form>
                   </div>     
                                
            </div>
        </div>
          <jsp:include page="footer.jsp" />  
                   