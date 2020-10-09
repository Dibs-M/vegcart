<!DOCTYPE html>
<!--<%@page isELIgnored="false" language="java" pageEncoding="ISO-8859-1"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="assets/vendor/owl-slider.css"/>
    <link rel="stylesheet" type="text/css" href="assets/vendor/settings.css"/>
    <link rel="stylesheet" type="text/css" href="assets/vendor/slick.css"/>
    <link rel="shortcut icon" href="assets/images/favicon.png" />
    <script type="text/javascript" src="assets/js/jquery-3.2.0.min.js"></script>
    <title>Veg Cart</title>
</head>
<body>
<BR>
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
                <form action="searchproduct" method="post">
                    <input type="text" class="form-control control-search" name="productName" placeholder="Search and hit enter...">
                    <button class="button_search" type="submit">Search</button>
               </form>     
                </div><!-- /input-group -->

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- End pushmenu -->
<div class="wrappage">
    <header id="header" class="header-v1 header-v3 header-v4">
        <div id="topbar">
            <div class="container container-ver2">
               <!-- <div class="inner-topbar box">
                <c:if test="${not empty user}">
                <div class="float-left">
                <h6 class="title-brand">Welcome,${user.customerName}</h6>
                </div>
                
                </c:if> -->
                
                <div class="float-right align-right">
                            <div class="hover-menu">
                                <a class="acc" href="#" title="Action"><img src="assets/images/icon-user-header.png" alt="icon"> &nbsp;&nbsp; Action</a>
                                <ul class="list-menu">
                                    <li  style="width:90px"><a href="vendorlogin" title="Admin Login">Admin Login</a></li>
                                    <li  style="width:90px"><a href="vendorlogin" title="Partner Login">Partner Login</a></li>
                                    <li  style="width:90px"><a href="vendorlogin" title="Vendor Login">Vendor Login</a></li>
                                    <li  style="width:90px"><a href="custonmerdirectlogin" title="Customer Login">Customer Login</a></li>
                                    <c:if test="${not empty user}">
                                    <li  style="width:90px"><a href="customerorders" title="My Order">My Orders</a></li>
                                    </c:if>
                                </ul>
                            </div>
                            <!--
                            <c:if test="${not empty user}">
                             <a class="link-v1 rt" href="logout" title="logout" >Logout</a>
                             </c:if> -->
                            <!-- End hover-menu -->
                </div>
                
                   <!--  <div class="float-left">
                        <a href="#" title="acc"><img src="assets/images/icon-acc.png" alt="icon"></a>
                        <a class="icon-head4" href="#" title="wishlist"><img src="assets/images/icon-wishlist.png" alt="icon"></a>
                   </div> -->
                    <div class="logo">
                        <a href="#" title="Uno">
                            <img src="assets/images/logo-v1.png" alt="images">
                        </a>
                    </div>
                    <div class="float-right align-right" style="margin-right: 20px;">
                        <div class="box-right">
                            <div class="cart hover-menu">
                                <p class="icon-cart" title="Add to cart">
                                    <i class="icon"></i>
                                    <span class="cart-count" id="cart-count">0</span>
                                </p>
                                <div class="cart-list list-menu">
                                    <ul class="list" id="mycart">
                                    
                                        <!-- <li>
                                            <a href="#" title="" class="cart-product-image"><img src="assets/images/products/1.jpg" alt="Product"></a>
                                            <div class="text">
                                                <p class="product-name">Legging Cathedral</p>
                                                <p class="product-price"><span class="price-old"> INR 700.00</span><span class="price"> INR 350.00</span></p>
                                                <p class="qty">QTY:01</p>
                                            </div>
                                            <a class="close" href="#" title="close"><i class="fa fa-times-circle"></i></a>
                                        </li>
                                        <li>
                                            <a href="#" title="" class="cart-product-image"><img src="assets/images/products/2.jpg" alt="Product"></a>
                                            <div class="text">
                                                <p class="product-name">Legging Cathedral</p>
                                                <p class="product-price"><span class="price-old"> INR 700.00</span><span class="price"> INR 350.00</span></p>
                                                <p class="qty">QTY:01</p>
                                            </div>
                                            <a class="close" href="#" title="close"><i class="fa fa-times-circle"></i></a>
                                        </li>
                                        <li>
                                            <a href="#" title="" class="cart-product-image"><img src="assets/images/products/3.jpg" alt="Product"></a>
                                            <div class="text">
                                                <p class="product-name">Legging Cathedral</p>
                                                <p class="product-price"><span class="price-old"> INR 700.00</span><span class="price"> INR 350.00</span></p>
                                                <p class="qty">QTY:01</p>
                                            </div>
                                            <a class="close" href="#" title="close"><i class="fa fa-times-circle"></i></a>
                                        </li> -->
                                    </ul>
                                  
                                </div>
                            </div>
                            <div class="search dropdown" data-toggle="modal" data-target=".bs-example-modal-lg">
                                <i class="icon"></i>
                            </div>
                            <div>
                          <!--   <c:if test="${not empty user}">
                              <a class="link-v1 rt" href="logout" title="checkout" >Logout</a>
                              </c:if> --%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End container -->
        </div>
        <BR>
        <!-- End topbar -->
     
        <!-- End header-top -->
    </header><!-- /header -->
  

    </div>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.themepunch.plugins.min.js"></script>
    <script type="text/javascript" src="assets/js/engo-plugins.js"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js"></script>
    <script type="text/javascript" src="assets/js/map-icons.js"></script>
    <script type="text/javascript" src="assets/js/slick.min.js"></script>
    <script type="text/javascript" src="assets/js/store.js"></script>
    <script type="text/javascript" src="assets/js/home.js"></script>
</body>
</html>