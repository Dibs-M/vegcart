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
    <link rel="stylesheet" type="text/css" href="assets/vendor/slick.css"/>
    <link rel="shortcut icon" href="assets/images/favicon.png" />
    <script type="text/javascript" src="assets/js/jquery-3.2.0.min.js"></script>
    <title>Veg Cart</title>
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
                <div class="inner-topbar box">
                <c:if test="${not empty user}">
                <div class="float-left">
                <h6 class="title-brand">Welcome,${user.customerName}</h6>
                </div>
                
                </c:if>
                
                <div class="float-right align-right">
                            <div class="hover-menu">
                                <a class="acc" href="#" title="Action"><img src="assets/images/icon-user-header.png" alt="icon">Action</a>
                                <ul class="list-menu">
                                    <li  style="width:90px"><a href="vendorlogin" title="Vendor Login">Vendor Login</a></li>
                                    <li  style="width:90px"><a href="custonmerdirectlogin" title="Customer Login">Customer Login</a></li>
                                    <c:if test="${not empty user}">
                                    <li  style="width:90px"><a href="customerorders" title="My Order">My Orders</a></li>
                                    </c:if>
                                </ul>
                            </div>
                            <c:if test="${not empty user}">
                             <a class="link-v1 rt" href="logout" title="logout" >Logout</a>
                             </c:if>
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
                                    <p class="total"><span class="left">Total:</span> <span class="right" id="totalcartamount"> INR 0</span></p>
                                    <input type="hidden" id="totalcartamounth" value="0">
                                    <input type="hidden" id="cartitemid" value="0">
                                    <div class="bottom">
                                        <!-- <a class="link-v1" href="shopping_cart.html" title="viewcart">View Cart</a> -->
                                        <!-- <a class="link-v1 rt" href="checkout.html" title="checkout">Check out</a> -->
                                        <a class="link-v1 rt" href="#" title="checkout" onclick="checkout();">Check out</a>
											<form action="checkout" id="checkoutform" method="post">
												<input type="hidden" name="checkoutitems" id="checkoutitems">
											</form>
										</div>
                                </div>
                            </div>
                            <div class="search dropdown" data-toggle="modal" data-target=".bs-example-modal-lg">
                                <i class="icon"></i>
                            </div>
                            <div>
                          <%--   <c:if test="${not empty user}">
                              <a class="link-v1 rt" href="logout" title="checkout" >Logout</a>
                              </c:if> --%>
                            </div>
                        </div>
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
                    <div class="logo-mobile"><a href="#" title="Xanadu"><img src="assets/images/logo-v2.png" alt="Xanadu-Logo"></a></div>
                    <nav class="mega-menu">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <ul class="nav navbar-nav" id="navbar">
                            <li class="level1 active dropdown"><a href="#/vegetables_catalog" title="Vegetables">Vegetables</a>
                                <ul class="menu-level-1 dropdown-menu">
                                    <li class="level2"><a href="#/vegetables_catalog" title="Vegetables 1">Fresh Vegetables</a></li>
                                    <li class="level2"><a href="#/vegetables_catalog" title="Vegetables 2">Cut Vegetables</a></li>
                                    
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
    <!-- <div class="container container-ver2" style="height:50%">
        <div class="tp-banner-container ver4">
        <div class="tp-banner" >
            <ul>    SLIDE 
                SLIDE 
                <li data-transition="random" data-slotamount="6" data-masterspeed="1000" >
                    MAIN IMAGE
                    <img src="assets/images/home4-slideshow2.jpg"  alt="Futurelife-home2-slideshow"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">

                    LAYER NR. 9
                    <div class="tp-caption color-white skewfromleft customout font-play tp-resizeme size-50 bg-brand uppercase"
                         data-x="445"
                         data-y="209"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-speed="800"
                         data-start="800"
                         data-easing="Power4.easeOut"
                         data-endspeed="300"
                         data-endeasing="Power1.easeIn"
                         data-captionhidden="on"
                         style="z-index: 3">Save 30%
                    </div>

                    LAYER NR. 3
                    <div class="tp-caption font-ros weight-400 skewfromleft customout size-28 bg-white"
                         data-x="247"
                         data-y="280"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-speed="800"
                         data-start="1600"
                         data-easing="Power4.easeOut"
                         data-endspeed="300"
                         data-endeasing="Power1.easeIn"
                         data-captionhidden="on"
                         style="z-index: 4">When buying seasonal veggies and fruits...
                    </div>
                </li>
                SLIDER
                SLIDE 
                <li data-transition="random" data-slotamount="6" data-masterspeed="1000" >
                    MAIN IMAGE
                    <img src="assets/images/home4-slideshow1.jpg"  alt="Futurelife-home2-slideshow"  data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">

                    LAYER NR. 9
                    <div class="tp-caption color-white skewfromleft customout font-play tp-resizeme size-50 bg-brand"
                         data-x="550"
                         data-y="220"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-speed="800"
                         data-start="800"
                         data-easing="Power4.easeOut"
                         data-endspeed="300"
                         data-endeasing="Power1.easeIn"
                         data-captionhidden="on"
                         style="z-index: 3">Order Home Delivery!
                    </div>

                    LAYER NR. 3
                    <div class="tp-caption font-ros weight-400 skewfromleft customout size-20 bg-white"
                         data-x="680"
                         data-y="290"
                         data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
                         data-speed="800"
                         data-start="1600"
                         data-easing="Power4.easeOut"
                         data-endspeed="300"
                         data-endeasing="Power1.easeIn"
                         data-captionhidden="on"
                         style="z-index: 4">We offer a regular delivery schedule...
                    </div>
                </li>
                SLIDER
            </ul>
            <div class="tp-bannertimer"></div>
        </div>
    </div>
    </div> -->
   
   
   <div class="container">
                <div class="featured-products home_2 new-arrivals lastest">
                    <ul class="tabs tabs-title">
					    <li class="item" rel="tab_1">Vegetables</li>
                        <li class="item" rel="tab_2">Fruits</li>
                        <li class="item" rel="tab_4">Nuts</li>
                        <li class="item" rel="tab_3">Beverages</li>                       
					   <li class="item" rel="tab_5">Meat</li>
                    </ul>
                    <div class="tab-container space-10">
                        <div id="tab_1" class="tab-content">
                            <div class="products hover-shadow ver2 border-space-product">
                            
                            <c:forEach items="${vegetables}" var="vegetable">
                            
                            <div class="product">
                                    <div class="product-images">
                                        <a href="" title="product-images">
                                            <img class="primary_image" src="assets/images/products/${vegetable.productImage}" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/vegtables/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart" onclick="addItemIntoCart('${vegetable.id}','${vegetable.productImage}','${vegetable.productName}','${vegetable.productPrice}','${vegetable.productPrice-vegetable.discount}');"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="${vegetable.productName}"><p class="product-title">${vegetable.productName}</p></a>
                                    <p class="product-price-old"> INR ${vegetable.productPrice}</p>
                                    <p class="product-price"> INR ${vegetable.productPrice-vegetable.discount}</p>
                                    <p class="product-unit"> ${vegetable.productStandardQuantity} ${vegetable.productUnit} </p>
                                    
                                </div>
                            </c:forEach>
                          <!--       <div class="product">
                                    <div class="product-images">
                                        <a href="" title="product-images">
                                            <img class="primary_image" src="assets/images/products/vegtables/1.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/vegtables/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        End action
                                    </div>
                                    <a href="#" title="Carrot"><p class="product-title">Carrot</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                End item
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/vegtables/2.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        End action
                                    </div>
                                    <a href="#" title="Tomato"><p class="product-title">Tomato</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                </div>
                                End item
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/vegtables/3.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        End action
                                    </div>
                                    <a href="#" title="Potato"><p class="product-title">Potato</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                End item
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/vegtables/13.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        End action
                                    </div>
                                    <a href="#" title="ladies finger"><p class="product-title">Spring onions</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                End item
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/vegtables/5.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        End action
                                    </div>
                                    <a href="#" title="Broccoli"><p class="product-title">Broccoli</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                End item
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/vegtables/6.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        End action
                                    </div>
                                    <a href="#" title="Cauliflower"><p class="product-title">Cauliflower</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                End item
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/vegtables/7.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        End action
                                    </div>
                                    <a href="#" title="Garlic"><p class="product-title">Garlic</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                End item
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/vegtables/8.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        End action
                                    </div>
                                    <a href="#" title="Ginger"><p class="product-title">Ginger</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                </div>
                                End item
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/vegtables/9.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        End action
                                    </div>
                                    <a href="#" title="Onion"><p class="product-title">Onion</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                End item
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/vegtables/10.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        End action
                                    </div>
                                    <a href="#" title="capsicum"><p class="product-title">capsicum</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div> -->
                                <!-- End item -->
                            </div>
                            <!-- End product-tab-content products -->
                        </div>
                        <!-- End tab-content -->
                        <div id="tab_2" class="tab-content">
                            <div class="products hover-shadow ver2 border-space-product">
                                <div class="product hover-shadow">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/featured/10.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/featured/11.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/featured/13.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/featured/14.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/featured/15.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                            </div>
                            <!-- End product-tab-content products -->
                        </div>
                        <!-- End tab-content -->
                        <div id="tab_3" class="tab-content">
                            <div class="products ver2 hover-shadow border-space-product">
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/bav/1.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/bav/1.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/bav/2.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/vegtables/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/bav/3.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/vegtables/3.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/bav/4.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/vegtables/4.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/bav/5.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/vegtables/5.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/bav/6.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/vegtables/6.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/bav/7.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/vegtables/7.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/bav/8.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/bav/9.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/bav/10.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                    
                                </div>
                                <!-- End item -->
                            </div>
                            <!-- End product-tab-content products -->
                        </div>
                        <!-- End tab-content -->
                        <div id="tab_4" class="tab-content">
                            <div class="products ver2 hover-shadow border-space-product">
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/nuts/1.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/nuts/1.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/nuts/3.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/nuts/4.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/nuts/5.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/nuts/6.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/nuts/7.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/nuts/8.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/nuts/9.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/featured/10.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                            </div>
                            <!-- End product-tab-content products -->
                        </div>
                        <!-- End tab-content -->
                        <div id="tab_5" class="tab-content">
                            <div class="products ver2 hover-shadow border-space-product">
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/meat/1.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/meat/2.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/meat/3.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/meat/4.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/meat/5.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/meat/6.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/meat/7.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/meat/9.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>
                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/meat/10.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                                <div class="product">
                                    <div class="product-images">
                                        <a href="#" title="product-images">
                                            <img class="primary_image" src="assets/images/products/meat/8.jpg" alt=""/>
                                            <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                        </a>
                                        <div class="action">
                                            <a class="add-cart" href="#" title="Add to cart"></a>
                                            <a class="wish" href="#" title="Wishlist"></a>
                                            <a class="zoom" href="product_detail_v2.html" title="Quick view"></a>
                                        </div>
                                        <!-- End action -->
                                    </div>
                                    <a href="#" title="Union Bed"><p class="product-title">Union Bed</p></a>
                                    <p class="product-price-old"> INR 700.00</p>
                                    <p class="product-price"> INR 350.00</p>

                                </div>
                                <!-- End item -->
                            </div>
                            <!-- End product-tab-content products -->
                        </div>
                        <!-- End tab-content -->
                    </div>
                </div>

            </div>
			
			
			
			 <div class="container container-ver2 banner-home4">
        <div class="catbox-container home-4">
            <div class="row">
            <div class="col-md-4 col-sm-4">
                <div class="items">
                    <div class="hover-images">
                        <img src="assets/images/catbox-hom4-1.jpg" alt="banner">
                        <div class="text">
                            <h3>Vegetables</h3>
                            <a href="#" title="View all product">View all product</a>
                        </div>
                    </div>
                </div>
               
            </div>
            <!--End col-md-4-->
            <div class="col-md-4 col-sm-4">
                <div class="items">
                    <div class="hover-images">
                        <img src="assets/images/catbox-hom4-2.jpg" alt="banner">
                        <div class="text">
                            <h3>Organic Food</h3>
                            <a href="#" title="View all product">View all product</a>
                        </div>
                    </div>
                </div>
                <!--End items-->
            </div>
            <!--End col-md-4-->
            <div class="col-md-4 col-sm-4">
                <div class="items">
                    <div class="hover-images">
                        <img src="assets/images/catbox-hom4-4.jpg" alt="banner">
                        <div class="text">
                            <h3>Fresh Meat</h3>
                            <a href="#" title="View all product">View all product</a>
                        </div>
                    </div>
                </div>
               
            </div>
			
            <!--End col-md-4-->
        </div>
        </div>
    </div>
   
	
	
    <div class="container container-ver2">
        
        <div class="featured-products">
            <ul class="tabs tabs-title">
                <li class="item" rel="tab_01">NEW ARRIVALS</li>
                <li class="item" rel="tab_02">BEST SELLER</li>
                <li class="item" rel="tab_03">TOP RATED</li>
            </ul>
            <div class="tab-container space-50">
                <div id="tab_01" class="tab-content">
                    <div class="products">
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/vegtables/46.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="Corinder leaf"><p class="product-title">Corinder leaf</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/vegtables/45.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="Bottle Gourd"><p class="product-title">Bottle Gourd</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>
                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/vegtables/47.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="Brinjal"><p class="product-title">Brinjal</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/vegtables/43.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">Beetroot</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/vegtables/48.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/vegtables/32.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/vegtables/25.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/vegtables/26.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>
                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/vegtables/27.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/vegtables/30.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/11.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/12.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                    </div>
                    <!-- End product-tab-content products -->
                </div>
                <!-- End tab-content -->
                <div id="tab_02" class="tab-content">
                    <div class="products">
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>
                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/6.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/6.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/8.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/7.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>
                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/9.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/12.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>
                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/11.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/10.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                    </div>
                    <!-- End product-tab-content products -->
                </div>
                <!-- End tab-content -->
                <div id="tab_03" class="tab-content">
                    <div class="products">
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>
                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/6.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/7.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/8.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/3.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>
                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/9.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/4.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/10.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/5.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/11.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/1.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                        <div class="product">
                            <div class="product-images">
                                <a href="#" title="product-images">
                                    <img class="primary_image" src="assets/images/products/featured/12.jpg" alt=""/>
                                    <img class="secondary_image" src="assets/images/products/featured/2.jpg" alt=""/>
                                </a>
                            </div>
                            <a href="#" title="BlueBerry"><p class="product-title">BlueBerry</p></a>
                            <p class="product-price-old"> INR 700.00</p>
                            <p class="product-price"> INR 350.00</p>

                        </div>
                        <!-- End item -->
                    </div>
                    <!-- End product-tab-content products -->
                </div>
                <!-- End tab-content -->
            </div>
           
        </div>
    </div>
	
	
	
	
	
  <!-- End container-ver2 -->
            <div class="special home_v1 bg-images box space-100" style="background-image:url('assets/images/home1-banner1.jpg');background-repeat: no-repeat;">
                <div class="col-md-5 float-left align-right">
                    <img class="images-logo" src="assets/images/home1-images-banner1.png" alt="images">
                </div>
                <!-- End col-md-7 -->
                <div class="col-md-7 float-right align-left">
                    <div class="special-content">
                        <img class="icon-big" src="assets/images/icon-shipping-5.png" alt="Big sale today"><h3>BIG SALE TODAY</h3>
                        <h5>Get 30% off your order of $100 or more...</h5>
                        <div class="time" data-countdown="countdown" data-date="04-20-2017-10-20-30"></div>
                        <a class="link-v1 bg-brand font-300" href="#" title="shopnow">Shop Now</a>
                    </div>
                </div>
                <!-- End col-md-5 -->
            </div>
            <!-- End container -->
			
			 <!--End container-->
 <!--            <div class="container container-ver2 blog-home1">
                    <div class="title-text-v2">
                        <div class="icon-title align-center space-20">
                            <img src="assets/images/title-lastest-from.png" alt="icon-title">
                        </div>  
                        <h3>Lastest From Blog</h3>
                        <a class="link padding-bt-20" href="#" title="See all">See all</a>
                    </div>
                    End title
                    <div class="blog-content slider-three-item owl-carousel">
                        <div class="item">
                            <a class="hover-images" href="#" title="images">
                                <img class="img-responsive" src="assets/images/ImgBlog/1.jpg" alt="blog">
                            </a>
                            <div class="text">
                                <p class="date">DEC 17,2016</p>
                                <a href="#" title="title"><h3>Learn On Organic Farms</h3></a>
                                <p class="by">Post by <span>FreshFood</span> - 16 Comments</p>
                            </div>
                        </div>
                        End item
                        <div class="item">
                            <a class="hover-images" href="#" title="images">
                                <img class="img-responsive" src="assets/images/ImgBlog/2.jpg" alt="blog">
                            </a>
                            <div class="text">
                                <p class="date">DEC 17,2016</p>
                                <a href="#" title="title"><h3>What is organic farming?</h3></a>
                                <p class="by">Post by <span>FreshFood</span> - 16 Comments</p>
                            </div>
                        </div>
                        End item
                        <div class="item">
                            <a class="hover-images" href="#" title="images">
                                <img class="img-responsive" src="assets/images/ImgBlog/3.jpg" alt="blog">
                            </a>
                            <div class="text">
                                <p class="date">DEC 17,2016</p>
                                <a href="#" title="title"><h3>Advantages of Organic Meat</h3></a>
                                <p class="by">Post by <span>FreshFood</span> - 16 Comments</p>
                            </div>
                        </div>
                        End item
                    </div>
                    End blog-content
            </div> -->
            <!-- End container -->
			
			<div class="choose-us">
            <div class="container container-ver2">
                <div class="title-choose align-center">
                    <h3>Why Choose Us</h3>
                    <p>The fact of the matter is that you really know something's organic when you find bugs! they obviously wouldn'tÂ have made it that far in a non-organic growing environment, so better than any certification or seal on a package,Â the presence of creatures let you know the plant was healthy and.</p>
                    <div class="align-center border-choose">
                        <div class="images">
                            <img src="assets/images/bg-border-center.png" alt="icon">
                        </div>
                        <!--End images-->
                    </div>
                    <!--End border-->
                </div>
                <!--End title-->
                <div class="col-md-3 align-left">
                    <div class="text">
                        <img class="icon-choose" src="assets/images/icon-choose-1.png" alt="icon-choose">
                        <h3>100% Organic</h3>
                        <p>Suspendisse ultricies nisi vel quam suscipit, et rutrum odio porttitor. </p>
                    </div>
                    <!--End text-->
                    <div class="text">
                        <img class="icon-choose" src="assets/images/icon-choose-2.png" alt="icon-choose">
                        <h3>Family healthy</h3>
                        <p>Suspendisse ultricies nisi vel quam suscipit, et rutrum odio porttitor. </p>
                    </div>
                    <!--End text-->
                    <div class="text">
                        <img class="icon-choose" src="assets/images/icon-choose-3.png" alt="icon-choose">
                        <h3>Always Fresh</h3>
                        <p>Suspendisse ultricies nisi vel quam suscipit, et rutrum odio porttitor. </p>
                    </div>
                    <!--End text-->
                </div>
                <!--End col-md-3-->
                <div class="col-md-6">
                    <img class="img-responsive" src="assets/images/images-choose.jpg" alt="banner">
                </div>
                <!--End col-md-6-->
                <div class="col-md-3 align-right right-items">
                    <div class="text">
                        <h3>100% Organic</h3>
                        <img class="icon-choose" src="assets/images/icon-choose-4.png" alt="icon-choose">
                        <p>Suspendisse ultricies nisi vel quam suscipit, et rutrum odio porttitor. </p>
                    </div>
                    <!--End text-->
                    <div class="text">
                        <h3>Family healthy</h3>
                        <img class="icon-choose" src="assets/images/icon-choose-5.png" alt="icon-choose">
                        <p>Suspendisse ultricies nisi vel quam suscipit, et rutrum odio porttitor. </p>
                    </div>
                    <!--End text-->
                    <div class="text">
                        <h3>Always Fresh</h3>
                        <img class="icon-choose" src="assets/images/icon-choose-6.png" alt="icon-choose">
                        <p>Suspendisse ultricies nisi vel quam suscipit, et rutrum odio porttitor. </p>
                    </div>
                    <!--End text-->
                </div>
                <!--End col-md-3-->
            </div>
            <!--End container-->
        </div>
			   <!-- End container-ver2 -->
    <!-- <div class="slider-one-item-ver2 space-50">
        <div class="slider-dot-images">
            <div class="container container-ver2 center">
                <div class="slider-nav">
                    <div>
                        <img src="assets/images/about1.jpg" alt="images">
                    </div>
                    <div>
                        <img src="assets/images/about2.jpg" alt="images">
                    </div>
                    <div>
                        <img src="assets/images/about3.jpg" alt="images">
                    </div>
                    <div>
                        <img src="assets/images/about4.jpg" alt="images">
                    </div>
                    <div>
                        <img src="assets/images/about5.jpg" alt="images">
                    </div>
                    <div>
                        <img src="assets/images/about1.jpg" alt="images">
                    </div>
                    <div>
                        <img src="assets/images/about2.jpg" alt="images">
                    </div>
                    <div>
                        <img src="assets/images/about3.jpg" alt="images">
                    </div>
                    <div>
                        <img src="assets/images/about4.jpg" alt="images">
                    </div>
                    <div>
                        <img src="assets/images/about5.jpg" alt="images">
                    </div>
                </div>
                <div class="slider-for">
                    <div>
                        <p>I rarely write reviews for products but with the EngoCreative, I am more than grateful. The site is fully customizable and you can really feel like playing while designing the site! Thanks again for having made such a convenient, yet fully-functional theme.</p>
                        <h3>JONATHAN VANCE</h3>
                        <a href="#" title="CEO">CEO &amp; Founder</a>
                    </div>
                    <div>
                        <p>I rarely write reviews for products but with the EngoCreative, I am more than grateful. The site is fully customizable and you can really feel like playing while designing the site! Thanks again for having made such a convenient, yet fully-functional theme.</p>
                        <h3>JONATHAN VANCE</h3>
                        <a href="#" title="CEO">CEO &amp; Founder</a>
                    </div>
                    <div>
                        <p>I rarely write reviews for products but with the EngoCreative, I am more than grateful. The site is fully customizable and you can really feel like playing while designing the site! Thanks again for having made such a convenient, yet fully-functional theme.</p>
                        <h3>JONATHAN VANCE</h3>
                        <a href="#" title="CEO">CEO &amp; Founder</a>
                    </div>
                    <div>
                        <p>I rarely write reviews for products but with the EngoCreative, I am more than grateful. The site is fully customizable and you can really feel like playing while designing the site! Thanks again for having made such a convenient, yet fully-functional theme.</p>
                        <h3>JONATHAN VANCE</h3>
                        <a href="#" title="CEO">CEO &amp; Founder</a>
                    </div>
                    <div>
                        <p>I rarely write reviews for products but with the EngoCreative, I am more than grateful. The site is fully customizable and you can really feel like playing while designing the site! Thanks again for having made such a convenient, yet fully-functional theme.</p>
                        <h3>JONATHAN VANCE</h3>
                        <a href="#" title="CEO">CEO &amp; Founder</a>
                    </div>
                    <div>
                        <p>I rarely write reviews for products but with the EngoCreative, I am more than grateful. The site is fully customizable and you can really feel like playing while designing the site! Thanks again for having made such a convenient, yet fully-functional theme.</p>
                        <h3>JONATHAN VANCE</h3>
                        <a href="#" title="CEO">CEO &amp; Founder</a>
                    </div>
                    <div>
                        <p>I rarely write reviews for products but with the EngoCreative, I am more than grateful. The site is fully customizable and you can really feel like playing while designing the site! Thanks again for having made such a convenient, yet fully-functional theme.</p>
                        <h3>JONATHAN VANCE</h3>
                        <a href="#" title="CEO">CEO &amp; Founder</a>
                    </div>
                    <div>
                        <p>I rarely write reviews for products but with the EngoCreative, I am more than grateful. The site is fully customizable and you can really feel like playing while designing the site! Thanks again for having made such a convenient, yet fully-functional theme.</p>
                        <h3>JONATHAN VANCE</h3>
                        <a href="#" title="CEO">CEO &amp; Founder</a>
                    </div>
                    <div>
                        <p>I rarely write reviews for products but with the EngoCreative, I am more than grateful. The site is fully customizable and you can really feel like playing while designing the site! Thanks again for having made such a convenient, yet fully-functional theme.</p>
                        <h3>JONATHAN VANCE</h3>
                        <a href="#" title="CEO">CEO &amp; Founder</a>
                    </div>
                    <div>
                        <p>I rarely write reviews for products but with the EngoCreative, I am more than grateful. The site is fully customizable and you can really feel like playing while designing the site! Thanks again for having made such a convenient, yet fully-functional theme.</p>
                        <h3>JONATHAN VANCE</h3>
                        <a href="#" title="CEO">CEO &amp; Founder</a>
                    </div>
                </div>
                <!-- End slider-for -->
            </div>
            <!-- End container -->
			
     <!--        <div class="container container-ver2">
                <div class="brand-content owl-carousel">
                    <div class="items">
                        <a href="#" title="brand"><img class="img-responsive" src="assets/images/brand-1a.png" alt="Brand"></a>
                    </div>
                    <div class="items">
                        <a href="#" title="brand"><img class="img-responsive" src="assets/images/brand-2a.png" alt="Brand"></a>
                    </div>
                    <div class="items">
                        <a href="#" title="brand"><img class="img-responsive" src="assets/images/brand-3a.png" alt="Brand"></a>
                    </div>
                    <div class="items">
                        <a href="#" title="brand"><img class="img-responsive" src="assets/images/brand-4a.png" alt="Brand"></a>
                    </div>
                    <div class="items">
                        <a href="#" title="brand"><img class="img-responsive" src="assets/images/brand-5a.png" alt="Brand"></a>
                    </div>
                    <div class="items">
                        <a href="#" title="brand"><img class="img-responsive" src="assets/images/brand-6a.png" alt="Brand"></a>
                    </div>
                </div>
            </div>
            End container
        </div>
    </div> -->
    <!--End bg-slider-->
    <div id="back-to-top">
        <i class="fa fa-long-arrow-up"></i>
    </div>
	
	
	 <!--End container-ver2-->
    <!-- End container -->
    <div class="container container-ver2">
        <div class="shipping-v2 home3-shiping home4-shipping space-30">
            <div class="col-md-3 col-sm-3 col-xs-6">
                <img src="assets/images/icon-shipping-1.png" alt="images">
                <h3>Free Shipping</h3>
                <p>ON ORDER OVER  INR 500</p>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
                <img src="assets/images/icon-shipping-2.png" alt="images">
                <h3>Support</h3>
                <p>LIFE TIME SUPPORT 24/7</p>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
                <img src="assets/images/icon-shipping-3.png" alt="images">
                <h3>Help Partner</h3>
                <p>HELP ALL ASPECTS</p>
            </div>
            <div class="col-md-3 col-sm-3 col-xs-6">
                <img src="assets/images/icon-shipping-4.png" alt="images">
                <h3>Contact With Us</h3>
                <p>+07 (0) 7782 9137</p>
            </div>
        </div>
        <!-- End container -->
    </div>
    <!-- End Shiping version2  -->
    <div class="banner-home3">
        <div class="container container-ver2">
            <img class="img-responsive" src="assets/images/banner-home3.jpg" alt="banner-home3">
            <div class="text">
                <img src="assets/images/icon-phone.png" alt="icon">
                <h4>Call FOR US now</h4>
                <h3>(070) - 7782 - 9137</h3>
                <p>Order Organic food To Fit Your Healthy Lifestyle!</p>
            </div>
            <!--End text-->
            <div class="icon-banner">
                <img src="assets/images/home3-images-banner1.png" alt="icon-banner">
            </div>
        </div>
    </div>
    <!--End banner-home3-->
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
                           <!--  <span>Price:</span>
                            <div class="hover-menu">
                                <p>USD <i class="fa fa-angle-down"></i></p>
                                <div class="list-menu">
                                    <ul>
                                        <li><a href="#" title="USD">USD</a></li>
                                        <li><a href="#" title="VND">VND</a></li>
                                    </ul>
                                </div>
                            </div> -->
                        </div>
                        <!-- End language -->
                    </div>
                </div>
            </div>
            <!-- End container -->
        </div>
    </footer>
<!-- End wrappage -->
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