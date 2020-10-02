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
        <title>Vendor Order</title>
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
                <div class="container container-ver2">
                    <div class="inner-topbar box">
                        <div class="float-left">
                            <p><h6>WELCOME,${user.customerName}</h6></p>
                        </div>
                        <div class="float-right align-right">
                            <c:if test="${not empty user}">
                              <a class="link-v1 rt" href="logout" title="logout" >Logout</a>
                              </c:if>
                            <!-- <div class="hover-menu">
                                <a class="acc" href="#" title="USD"><img src="assets/images/icon-user-header.png" alt="icon">MY ACCOUNT</a>
                                <ul class="list-menu">
                                    <li><a href="#" title="USD">LOGIN</a></li>
                                    <li><a href="#" title="VND">REGISTER</a></li>
                                </ul>
                            </div> -->
                            <!-- End hover-menu -->
                        </div>
                    </div>
                </div>
                <!-- End container -->
            </div>
    <div class="wrappage">
        <header id="header" class="header-v3 header-v2">
<jsp:include page="userHeader.jsp"></jsp:include>
            <div class="header-top">

            </div>
            <!-- End header-top -->
        </header><!-- /header -->
        <div class="main-content">
            <div class="container">
                <div class="banner-header banner-lbook3">
                    <img src="assets/images/banner-catalog1.jpg" alt="Banner-header">
                    <div class="text">
                        <h3>Vendor Orders</h3>
                        <p><a href="#" title="Home">Home</a><i class="fa fa-caret-right"></i>Vendor Orders</p>
                    </div>
                </div>
            </div>
            <div class="cart-box-container">
               <div class="container container-ver2 space-padding-tb-30">
                    <!--  <div class="row head-cart">
                        <div class="col-md-4 space-30">
                            <div class="item active center">
                                <p class="icon">01</p>
                                <h3>Shopping cart</h3>
                            </div>
                        </div>
                        End col-md-4
                        <div class="col-md-4 space-30">
                            <div class="item center">
                                <p class="icon">02</p>
                                <h3>Check out</h3>
                            </div>
                        </div>
                        End col-md-4
                        <div class="col-md-4 space-30">
                            <div class="item center">
                                <p class="icon">03</p>
                                <h3>Order completed</h3>
                            </div>
                        </div>
                        End col-md-4
                    </div>
                </div> 
                <!-- End container -->
<div class="container container-ver2">
                    <div class="box cart-container">
							<div class="item center">
								<h3>Order Details</h3>
							</div>
							<table class="table space-30" border="1">
                            <thead>
                                <tr>
                                    <th class="product-photo">Customer Mobile</th>
                                    <th class="produc-name">Product Name</th>
                                    <th class="produc-price">Price</th>
                                    <th class="product-quantity">Quantity</th>
                                    <th class="total-price">Discount</th>
                                    <th class="total-price">Amount From Customer</th>
                                    <th class="product-remove">Order Date</th>
                                    <th class="product-remove">Customer Address</th>
                                    <th class="product-remove">Order Status</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${customerorders}" var="customerorder">
                            <tr class="item_cart">
                            <td>${customerorder.customerMobile}</td>
                            <td>${customerorder.productName}</td>
                            <td>${customerorder.productPricePerUnit}</td>
                            <td>${customerorder.productActualQuantity}</td>
                            <td>${customerorder.discount}</td>
                            <td>${customerorder.totalAmount}</td>
                            <td>${customerorder.orderDate}</td>
                            <td>${customerorder.customerAddress}</td>
                            <td>${customerorder.orderStatus}</td>
                            </tr>

                            
                            </c:forEach>
                                                  
                             
                            </tbody>
                        </table>
                        
                        <form action="completedelivery" method="post" id="deliveryform">
                         
                         <input type="hidden" id="orderid" name="orderid" >
                        
                        </form>

                </div>
                <!-- End container -->
            </div>
            <!-- End cat-box-container -->
        </div>
        
         <jsp:include page="footer.jsp" />  
         
        