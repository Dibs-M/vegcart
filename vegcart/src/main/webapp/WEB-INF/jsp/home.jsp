<!DOCTYPE html>
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


   
     <jsp:include page="header.jsp" />  
   <div class="container">
                <div class="featured-products home_2 new-arrivals lastest">
				<!--
                    <ul class="tabs tabs-title">
					    <li class="item" rel="tab_1">Vegetables</li>
                        <li class="item" rel="tab_2">Fruits</li>
                        <li class="item" rel="tab_4">Nuts</li>
                        <li class="item" rel="tab_3">Beverages</li>                       
					   <li class="item" rel="tab_5">Meat</li>
                    </ul>
					-->
					 
           
						
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
        
			
                                 <!-- End item -->
                            </div>
                            <!-- End product-tab-content products -->
                        </div>
 
                    </div>
                </div>

            </div>
            <jsp:include page="footer.jsp" />  
	
	

			
			