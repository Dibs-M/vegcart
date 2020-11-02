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
                                <a class="acc" href="#" title="Action"><img src="assets/images/icon-user-header.png" alt="icon">Action</a>
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

                        <!-- <div class="box-right">
                            <div class="cart hover-menu">
                                <p class="icon-cart" title="Add to cart">
                                    <i class="icon"></i>
                                    <span class="cart-count">2</span>
                                </p>
                                <div class="cart-list list-menu">
                                    <ul class="list">
                                        <li>
                                            <a href="#" title="" class="cart-product-image"><img src="assets/images/products/1.jpg" alt="Product"></a>
                                            <div class="text">
                                                <p class="product-name">Union Bed</p>
                                                <p class="product-price"><span class="price-old">$700.00</span><span class="price">$350.00</span></p>
                                                <p class="qty">QTY:01</p>
                                            </div>
                                            <a class="close" href="#" title="close"><i class="fa fa-times-circle"></i></a>
                                        </li>
                                        <li>
                                            <a href="#" title="" class="cart-product-image"><img src="assets/images/products/2.jpg" alt="Product"></a>
                                            <div class="text">
                                                <p class="product-name">Union Bed</p>
                                                <p class="product-price"><span class="price-old">$700.00</span><span class="price">$350.00</span></p>
                                                <p class="qty">QTY:01</p>
                                            </div>
                                            <a class="close" href="#" title="close"><i class="fa fa-times-circle"></i></a>
                                        </li>
                                    </ul>
                                    <p class="total"><span class="left">Total:</span> <span class="right">$1121.98</span></p>
                                    <div class="bottom">
                                        <a class="link-v1" href="#" title="viewcart">View Cart</a>
                                        <a class="link-v1 rt" href="#" title="checkout">Check out</a>
                                    </div>
                                </div>
                            </div>
                            <div class="search dropdown" data-toggle="modal" data-target=".bs-example-modal-lg">
                                <i class="icon"></i>
                            </div>
                        </div> -->
                       
                        <nav class="mega-menu">
                            <!-- Brand and toggle get grouped for better mobile display -->
                             <!-- 
                            <ul class="nav navbar-nav" id="navbar">
                                <li class="level1 active dropdown"><a href="#" title="Home">Home</a>
                                    <ul class="menu-level-1 dropdown-menu">
                                        <li class="level2"><a href="home_v1.html" title="Home 1">Home 1</a></li>
                                        <li class="level2"><a href="home_v2.html" title="Home 2">Home 2</a></li>
                                        <li class="level2"><a href="home_v3.html" title="Home 3">Home 3</a></li>
                                    </ul>
                                </li>
                                <li class="level1"><a href="#" title="About us">About us</a></li>
                                <li class="level1"><a href="#" title="Store">Store</a></li>
                                <li class="level1 dropdown">
                                    <a href="#" title="men">Page</a>
                                    <div class="sub-menu sub-menu-v2 dropdown-menu">
                                        <div class="top-sub-menu">
                                            <img src="assets/images/top-submenu1.jpg" alt="images">
                                        </div>
                                        <ul class="menu-level-1">
                                            <li class="level2"><a href="#">Living Room</a>
                                                <ul class="menu-level-2">
                                                    <li class="level3"><a href="#" title="Seatings">Seatings</a></li>
                                                    <li class="level3"><a href="#" title="Tables">Tables</a></li>
                                                    <li class="level3"><a href="#" title="Accessories">Accessories</a></li>
                                                    <li class="level3"><a href="#" title="Series">Series</a></li>
                                                </ul>
                                            </li>
                                            <li class="level2"><a href="#">BATH Room</a>
                                                <ul class="menu-level-2">
                                                    <li class="level3"><a href="#" title="Lighting">Lighting</a></li>
                                                    <li class="level3"><a href="#" title="Storage">Storage</a></li>
                                                    <li class="level3"><a href="#" title="Accessories">Accessories</a></li>
                                                    <li class="level3"><a href="#" title="Beds">Beds</a></li>
                                                </ul>
                                            </li>
                                            <li class="level2"><a href="#">KITCHEN Room</a>
                                                <ul class="menu-level-2">
                                                    <li class="level3"><a href="#" title="Cleaning Tools">Cleaning Tools</a></li>
                                                    <li class="level3"><a href="#" title="Waste Bins">Waste Bins</a></li>
                                                    <li class="level3"><a href="#" title="Pots & Pans">Pots & Pans</a></li>
                                                    <li class="level3"><a href="#" title="Beds">Beds</a></li>
                                                </ul>
                                            </li>
                                            <li class="level2"><a href="#">Living Room</a>
                                                <ul class="menu-level-2">
                                                    <li class="level3"><a href="#" title="Seatings">Seatings</a></li>
                                                    <li class="level3"><a href="#" title="Tables">Tables</a></li>
                                                    <li class="level3"><a href="#" title="Accessories">Accessories</a></li>
                                                    <li class="level3"><a href="#" title="Series">Series</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <!-- End RightSubMenu -->
                                    </div>
                                    <!-- End Dropdow Menu -->
                                </li>
                                 -->
                                 <!-- 
                                <li class="level1"><a href="#" title="collections">Blog</a></li>
                                <li class="level1"><a href="#" title="Contact us">Contact us</a></li>
                                 -->
                            </ul>
                        </nav>  
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
                    <p><a href="#" title="Home">Home</a><i class="fa fa-caret-right"></i>Login/Register</p>
                </div>
            </div>
        </div>
        <!-- End banner -->
        <div class="container container-ver2">
            <div class="page-login box space-50">
                <div class="row">
                 <div class="col-md-12 sign-in space-30">
                        <h3>Forget Password</h3>
                       
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
                        <form  method="POST" action="updatepassword" class="needs-validation" novalidate>
                            <div class="group box space-20">
                                <input class="form-control" type="text"  id="mobile" name="mobile" value="${vendormobile}" >
                           	 </div>
                           	 
                           	 <div class="group box space-20">
                                <label class="control-label" for="inputpassword">Password<span class="color">*</span></label>
                                <input class="form-control" type="password" placeholder="password" id="password" name="password"  required >
                                      <div class="valid-feedback">Valid.</div>
                           	 </div>
                           	 
                           	 
                           	 <div class="group box space-20">
                                <label class="control-label" for="inputpassword">Confirm Password<span class="color">*</span></label>
                                <input class="form-control" type="password" placeholder="confirm password" id="confirmpassword"  required >
                                      <div class="valid-feedback">Valid.</div>
                           	 </div>
                           	
                           	 
                           	 </div>
                           
                            <button type="submit" class="link-v1 rt" style="margin-top:10px;" >UPDATE PASSWORD</button>
                          
                        </form>
                        
                     </div>
                     
                     <div class="col-md-12 sign-in space-30">
                     <form action="vendorregisteration" id="vendorregisteration" class="form-horizontal" method="POST">
                           <input type="hidden" name="checkoutitems" id="registercheckoutitems" value="${checkoutItems}"> 
                          <!--  <button type="submit" class="link-v1 rt">REGISTER NOW</button> -->
                        </form>
                   </div>     
               
            </div>
        </div>
          <jsp:include page="footer.jsp" />  


