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
    <div class="wrappage">
        <header id="header" class="header-v3 header-v2">
            <div id="topbar" class="topbar-ver2">
                <div class="container container-ver2">
                    <div class="inner-topbar box">
                        <div class="float-left">
                            <p><h6>WELCOME,${loginvendor.vendorName}</h6></p>
                        </div>
                        <div class="float-right align-right">
                            
                            <div class="hover-menu">
                                <a class="acc" href="#" title="Action"><img src="assets/images/icon-user-header.png" alt="icon">  &nbsp;&nbsp;Action</a>
                               <c:if test="${not empty loginvendor}">
                                <ul class="list-menu">
                                <!--     <li style="width:90px"><a href="addvendorproductp" title="Add Product">My Products</a></li> -->
                                     <li style="width:90px"><a href="getProducts" title="My Product">My Products</a></li>
                                    <li style="width:90px"><a href="#" title="My Orders" onclick="openVendorOrderPage()">My Orders</a></li>
                                </ul>
                                </c:if>
                            </div>
                            <c:if test="${not empty loginvendor}">
                             <a class="link-v1 rt" href="vendorlogout" title="vendor logout" >Logout</a>
                            </c:if>
                            
                            <!-- End hover-menu -->
                        </div>
                    </div>
                </div>
                <!-- End container -->
            </div>
            <!-- End topbar -->
            </header>
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