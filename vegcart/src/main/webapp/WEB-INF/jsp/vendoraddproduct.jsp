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
        <title>Registration</title>
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
                            <p><h6>WELCOME,${loginvendor.vendorName}</h6></p>
                        </div>
                        <div class="float-right align-right">
                            
                            <div class="hover-menu">
                                <a class="acc" href="#" title="Action"><img src="assets/images/icon-user-header.png" alt="icon">Action</a>
                               <c:if test="${not empty loginvendor}">
                                <ul class="list-menu">
                                    <li style="width:90px"><a href="addvendorproductp" title="Add Product">Add Product</a></li>
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

                       <!--  <div class="box-right">
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
                                <li class="level1"><a href="#" title="collections">Blog</a></li>
                                <li class="level1"><a href="#" title="Contact us">Contact us</a></li>
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
                  <!--   <div class="col-md-12 sign-in space-30">
                        <h3>sign in</h3>
                        <p>Hello, welcome to your account.</p>
                        <div class="social space-30 box">
                            <a class="float-left" href="#" title="facebook">
                                <i class="fa fa-facebook"></i>
                                SIGN IN WITH FACEBOOK
                            </a>
                            <a class="float-right" href="#" title="TWITTER">
                                <i class="fa fa-twitter"></i>
                                SIGN IN WITH TWITTER
                            </a>
                        </div>
                        End social
                        <form class="form-horizontal" method="POST">
                            <div class="group box space-20">
                                <label class="control-label" for="inputemail">Mobile <span class="color">*</span></label>
                                <input class="form-control" type="text" placeholder="Your email" id="inputemail">
                            </div>
                            <div class="group box">
                                <label class="control-label" for="inputemail">Password <span class="color">*</span></label>
                                <input class="form-control" type="text" placeholder="Password" id="inputpass"> 
                            </div>
                            <div class="remember">
                                <input id="remeber" type="checkbox" name="check" value="remeber">
                                <label for="remeber" class="label-check">remember me!</label>
                                <a class="help" href="#" title="help ?">Fogot your password?</a>   
                            </div>           
                            <button type="submit" class="link-v1 rt">LOGIN NOW</button>
                            <a class="link-v1 rt" href="#" title="checkout" onclick="OpenRegis();">NEW USER</a>
                        </form>
                        End form
                    </div> -->
                    <!-- End col-md-6 -->
                    <div class="col-md-12" id="registrationdiv">
                        <div class="register box space-50">
                            <h3>Add Product</h3>
                           <!--  <p>Create your own Rimbus account.</p> -->
                            <form class="form-horizontal" method="POST" action="addProduct">
                            <c:set var="imagemapping" value=""/>
                            <div class="group box space-20">
                                    <label class="control-label" for="inputemailres">Product Name <span class="color">*</span></label>
                                    <select id="productName" name="productName" class="form-control" onchange="fecthProductImage(this)" >
                                    <option value="Select Product">Select Product</option>
                                    <c:forEach items="${masterproducts}" var="product">
                                    <option value="${product.productName}">${product.productName}</option>
                                    <c:set var="imagemapping" value="${imagemapping}${product.productName}:${product.productImage}," />
                                    </c:forEach>
                                    </select>
                                    <input type="hidden" value="${imagemapping}" id="productimagemapping">
                                </div>
                                
                                <div class="group box space-20">
                                    <a href="#" title="" class="cart-product-image"><img id="product_image" src="" alt="Product" width="10%"></a>
                                    <input type="hidden" name="productImage" id="productImage">
                                </div>
                                
                                
                            
                                <div class="group box space-20">
                                    <label class="control-label" for="inputemailres">Product Price <span class="color">*</span></label>
                                    <input class="form-control" type="text" placeholder="Enter Product Price" id="productPrice" name="productPrice">
                                </div>
                                
                                <div class="group box space-20">
                                    <label class="control-label" for="inputemailres">Product Quantity <span class="color">*</span></label>
                                    <input class="form-control" type="text" placeholder="Enter Product Quantity" id="productStandardQuantity" name="productStandardQuantity">
                                </div>
                                
                                <div class="group box space-20">
                                    <label class="control-label" for="inputemailres">Product Unit <span class="color">*</span></label>
                                    <select id="productUnit" name="productUnit" class="form-control">
                                    <option value="Select Unit">Select Unit</option>
                                    <c:forEach items="${masterunits}" var="unit">
                                    <option value="${unit.unitName}">${unit.unitName}</option>
                                    </c:forEach>
                                    </select>
                                </div>
                                
                                <div class="group box space-20">
                                    <label class="control-label" for="inputemailres">Discount In Rupees <span class="color">*</span></label>
                                    <input class="form-control" type="text" placeholder="Discount In Rupees" id="discount" name="discount">
                                </div>
                                 
                                <button type="submit" class="link-v1 rt">Add Product</button>
                            </form>
                        </div>
                        <!-- End register -->
                      <!--   <div class="sigg-to-day box">
                            <h3>SIGN UP TODAY</h3>
                            <form class="form-horizontal" method="POST">
                                <div class="checkbox">
                                    <input id="check1" type="checkbox" name="check" value="check1">
                                    <label class="label-check" for="check1">Speed your way through the checkout.</label>
                                    <input id="check2" type="checkbox" name="check" value="check2">
                                    <label class="label-check" for="check2">Track your orders easily.</label>
                                    <input id="check3" type="checkbox" name="check" value="check3">
                                    <label class="label-check" for="check3">Keep a record of all purchases.</label>
                                </div>
                            </form>
                        </div> -->
                    </div>
                    <!-- End col-md-6 -->
                </div>
            </div>
        </div>
        <footer id="footer" class="footer-v3 align-left">
            <div class="container container-ver2">
                <div class="footer-inner">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <h3 class="title-footer">About Us</h3>
                            <p>With more than 15 years of experience we can proudly say that we are one of the best in business, a trusted supplier for more than 1000 companies...</p>
                            <a class="link-footer" href="#" title="footer">Read more <i class="fa fa-long-arrow-right"></i></a>
                        </div>
                        <div class="col-md-2 col-sm-6">
                            <h3 class="title-footer">Infomation</h3>
                            <ul class="list-footer">
                                <li><a href="#" title="title">Delivery</a></li>
                                <li><a href="#" title="title">Legal Notice</a></li>
                                <li><a href="#" title="title">Terms & Conditions</a></li>
                                <li><a href="#" title="title">About Us</a></li>
                                <li><a href="#" title="title">Secure Payment</a></li>
                                <li><a href="#" title="title">Our Stores</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <h3 class="title-footer">Get It Touch</h3>
                            <div class="social space-30">
                                <a href="#" title="t"><i class="fa fa-twitter"></i></a>
                                <a href="#" title="f"><i class="fa fa-facebook"></i></a>
                                <a href="#" title="y"><i class="fa fa-youtube-play"></i></a>
                                <a href="#" title="g"><i class="fa fa-google"></i></a>
                            </div>
                            <h3 class="title-footer">Payment Accept</h3>
                            <a href="#" title="paypal"><img src="assets/images/paypal-footer.png" alt="images"></a>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <h3 class="title-footer">Get Newsletter</h3>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
                            <div class="subscribe">
                                <form action="#" method="get" accept-charset="utf-8">
                                    <input type="text" onblur="if (this.value == '') {this.value = 'Enter Your Email Address';}" onfocus="if(this.value != '') {this.value = '';}" value="Enter Your Email Address" class="input-text required-entry validate-email" title="Sign up for our newsletter" id="newsletter" name="email">
                                    <button class="button button1 hover-white" title="Subscribe" type="submit">Subscribe<i class="fa fa-long-arrow-right"></i></button>
                                </form>
                            </div>
                            <!-- End subscribe -->
                        </div>
                    </div>
                    <!-- End row -->
                </div>
                <!-- End footer-inner -->
            </div>
            <!-- End container -->
            <div class="footer-bottom box">
                <div class="container container-ver2">
                    <div class="box bottom">
                        <p class="float-left">Copyright &copy;2016 Fresh Food - All Rights Reserved.</p>
                        <div class="float-right">
                            <ul class="menu-bottom-footer">
                                <li><a href="#" title="Contact Us">Contact Us</a></li>
                                <li><a href="#" title="Term of Use">Term of Use</a></li>
                                <li><a href="#" title="Privacy Policy">Privacy Policy</a></li>
                                <li><a href="#" title="Site Map">Site Map</a></li>
                            </ul>
                            <div class="language">
                                <span>Language:</span>
                                <div class="hover-menu">
                                    <p>EN <i class="fa fa-angle-down"></i></p>
                                    <div class="list-menu">
                                        <ul>
                                            <li><a href="#" title="EN">EN</a></li>
                                            <li><a href="#" title="VN">VN</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <span>Price:</span>
                                <div class="hover-menu">
                                    <p>USD <i class="fa fa-angle-down"></i></p>
                                    <div class="list-menu">
                                        <ul>
                                            <li><a href="#" title="USD">USD</a></li>
                                            <li><a href="#" title="VND">VND</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End language -->
                        </div>
                    </div>
                </div>
                <!-- End container -->
            </div>
        </footer>
    </div>
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="assets/js/engo-plugins.js"></script>
    
    <script type="text/javascript" src="assets/js/jquery.mousewheel.min.js"></script>
    <script type="text/javascript" src="assets/js/slick.min.js"></script>
    <script type="text/javascript" src="assets/js/store.js"></script>
    <script type="text/javascript" src="assets/js/vendorproduct.js"></script>
    
    </body>
        
</html>

