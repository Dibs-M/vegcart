 <!DOCTYPE html>
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
        <title>Order</title>
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
                            <p><span><h6 class="title-brand">Welcome,${user.customerName}</h6></span></p>
                        </div>
                        <div class="float-right align-right">
                            <!-- <div class="hover-menu">
                                <a class="acc" href="#" title="USD"><img src="assets/images/icon-user-header.png" alt="icon">MY ACCOUNT</a>
                                <ul class="list-menu">
                                    <li><a href="#" title="USD">LOGIN</a></li>
                                    <li><a href="#" title="VND">REGISTER</a></li>
                                </ul>
                            </div> -->
                            <a class="link-v1 rt" href="logout" title="logout" >Logout</a>
                            <!-- End hover-menu -->
                        </div>
                    </div>
                </div>
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
                            <div class="cart hover-menu">
                                   <!--  <p class="icon-cart" title="Add to cart">
                                        <i class="icon"></i>
                                        <span class="cart-count">2</span>
                                    </p> -->
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
                            <!-- <div class="search dropdown" data-toggle="modal" data-target=".bs-example-modal-lg">
                                <i class="icon"></i>
                            </div> -->
                        </div>
                        <nav class="mega-menu">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <ul class="nav navbar-nav" id="navbar">
                                <li class="level1 active dropdown"><a href="./vegetables_catalog.html" title="Vegetables">Vegetables</a>
                                <ul class="menu-level-1 dropdown-menu">
                                    <li class="level2"><a href="./vegetables_catalog.html" title="Vegetables 1">Fresh Vegetables</a></li>
                                    <li class="level2"><a href="./vegetables_catalog.html" title="Vegetables 2">Cut Vegetables</a></li>
                                    
                                </ul>
                            </li>
							<li class="level1 active dropdown"><a href="./fruit_catalog.html" title="Fruit">Fruit</a>
                                <ul class="menu-level-1 dropdown-menu">
                                    <li class="level2"><a href="./fruit_catalog.html" title="Fruit 1">Fresh Fruit</a></li>
                                    <li class="level2"><a href="./fruit_catalog.html" title="Fruit 2">Cut Fruit</a></li>
                                    
                                </ul>
                            </li>
							<li class="level1 active dropdown"><a href="./beverages_catalog.html" title="Beverages">Beverages</a>
                                <ul class="menu-level-1 dropdown-menu">
                                    <li class="level2"><a href="./beverages_catalog.html" title="Beverages 1">Juices</a></li>
                                    <li class="level2"><a href="./beverages_catalog.html" title="Beverages 2">Soft Drinks</a></li>
									<li class="level2"><a href="./beverages_catalog.html" title="Beverages 2">Water</a></li>
									<li class="level2"><a href="./beverages_catalog.html" title="Beverages 2">Soda</a></li>
									<li class="level2"><a href="./beverages_catalog.html" title="Beverages 2">Instant Drink Mix</a></li>
                                    <li class="level2"><a href="./beverages_catalog.html" title="Beverages 2">Energy Drinks</a></li>
									
                                </ul>
                            </li>
							<li class="level1 active dropdown"><a href="./frozen_food_catalog.html" title="Beverages">Frozen  Food</a>
                                <ul class="menu-level-1 dropdown-menu">
                                    <li class="level2"><a href="./frozen_food_catalog.html" title="Beverages 1">Frozen Veg</a></li>
                                    <li class="level2"><a href="./frozen_food_catalog.html" title="Beverages 2">Frozen Non-Veg</a></li>
                                </ul>
                            </li>
							<li class="level1 active dropdown"><a href="./meats_frozen_seafood_catalog.html" title="Beverages">meats-frozen-seafood</a>
                                <ul class="menu-level-1 dropdown-menu">
                                    <li class="level2"><a href="./meats_frozen_seafood_catalog.html" title="Beverages 1">Eggs</a></li>
                                    <li class="level2"><a href="./meats_frozen_seafood_catalog.html" title="Beverages 2">chicken</a></li>
									<li class="level2"><a href="./meats_frozen_seafood_catalog.html" title="Beverages 2">meat</a></li>
									<li class="level2"><a href="./meats_frozen_seafood_catalog.html" title="Beverages 2">seafoods</a></li>
                                </ul>
                            </li>
                            </ul>
                        </nav>
                    </div>                
                    </div>
                    <!-- End container -->
                </div>
                <!-- End header-top -->
        </header><!-- /header -->

        <div class="main-content">
            <div class="container">
                <div class="banner-header banner-lbook3">
                    <img src="assets/images/banner-catalog1.jpg" alt="Banner-header">
                    <div class="text">
                        <h3>Order Completed</h3>
                        <p><a href="#" title="Home">Home</a><i class="fa fa-caret-right"></i>Order Completed</p>
                    </div>
                </div>
            </div>
           <!--  <div class="container container-ver2 space-padding-tb-30">
                <div class="row head-cart">
                    <div class="col-md-4 space-30">
                        <div class="item active center">
                            <p class="icon">01</p>
                            <h3>Shopping cart</h3>
                        </div>
                    </div>
                    End col-md-4
                    <div class="col-md-4 space-30">
                        <div class="item active center">
                            <p class="icon">02</p>
                            <h3>Check out</h3>
                        </div>
                    </div>
                    End col-md-4
                    <div class="col-md-4 space-30">
                        <div class="item center active">
                            <p class="icon">03</p>
                            <h3>Order completed</h3>
                        </div>
                    </div>
                    End col-md-4
                </div>
            </div> -->
            <!-- End container -->
            <div class="container container-ver2">
                <div class="box float-left order-complete center space-50">
                    <div class="icon space-20">
                        <img src="assets/images/icon-order-complete.png" alt="icon">
                    </div>
                    <p class="box center space-50">Thank you for shopping with us, your order is complete!</p>
                    <div class="box">
                        <a class="link-v1 lh-50 margin-right-20 space-20 color-brand" href="/" title="HOME PAGE">HOME PAGE</a>
                        <a class="link-v1 lh-50 rt space-20" href="/" title="CONTINUS SHOPPING">CONTINUS SHOPPING</a>
                    </div>
                </div>
            </div>
            <!-- End container -->
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
    <!-- End wrappage -->
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="assets/js/engo-plugins.js"></script>
    
    <script type="text/javascript" src="assets/js/jquery.mousewheel.min.js"></script>
    <script type="text/javascript" src="assets/js/slick.min.js"></script>
    <script type="text/javascript" src="assets/js/store.js"></script>
    </body>
        
</html>

