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
        <script type="text/javascript" src="assets/js/vendororder.js"></script>
        <title>Add Vendor Product</title>
        <script type="javascript">
function validate(vendoraddproduct)
{
if(vendoraddproduct.productName.value.length==0)
{
alert("Please enter Vendor Product!");
ingredient.ingredient_code.focus();
return false;
}

return true;
}
</script>
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
        <jsp:include page="vendorHeader.jsp"></jsp:include>
            <div id="topbar" class="topbar-ver2">
            
 
            <div class="container">
                <div class="banner-header banner-lbook3">
                    <img src="assets/images/banner-catalog1.jpg" alt="Banner-header">
                    <div class="text">
                        <h3>Vendor Orders</h3>
                        <p><a href="#" title="Home">Home</a><i class="fa fa-caret-right"></i>Vendor Orders</p>
                    </div>
                </div>
            </div>
                <!-- End container -->
           <div class="container container-ver2">
                    <div class="box cart-container">

							

							<div>
							<table class="table space-30" border="1">
                            <thead>
                            <tr>
                            <td> 
                            							
								<h3>Product Details</h3>
							
                            </td>
                             <td> 
                            	  <form class="form-horizontal" method="POST" action="addvendorproductp">						
								<button type="submit" class="link-v1 rt">Add Products</button>
							</form>
                            </td>
                            </tr>
                                <tr>
                                   
                                    <th class="produc-name">Product Name</th>
                                    <th class="produc-price">Product Price</th>
                                    <th class="product-quantity">Product Quantity</th>
                                    <th class="total-price">Product Unit</th>
                                    <th class="total-price">Discount in Rupees</th>
                               
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${vendorProducts}" var="vendorProduct">
                            <tr class="item_cart">
                          
                            <td>${vendorProduct.productName}</td>
                            <td>${vendorProduct.productPrice}</td>
                            <td>${vendorProduct.productStandardQuantity}</td>
                             <td>${vendorProduct.productUnit}</td>
                            <td>${vendorProduct.discount}</td>
                            <td> 
                           
                           <a class="link-v1 rt" href="#" title="Edit Product" onclick="openVendorProductEditPage('${vendorProduct.id}');">Edit Product</a>
                         
                             
                            </td>
                            <td>
                            <a class="link-v1 rt" href="deleteProduct?id=${vendorProduct.id}" title="Delete Product">Delete Product</a>
                            </td>
                       
               
                         <!--    <td><a class="link-v1 rt" href="#" title="order delivery" onclick="completeVendorOrder('${vendoraddproduct.id}');">Order Delivered</a></td> -->
                            </tr>
                            
                            </c:forEach>
                            </tbody>
                            </table>
                            </div>
          
                    <form action="editvendorproductp" method="POST" id="editform">
                           <input type="hidden" id="editvendorproduct" name="editvendorproduct" > 
                    </form> 
                    
                   <!--  <form action="deleteProduct" method="DELETE" id="deleteform">
                            <input type="hidden" id="id" name="id" >
                            <button type="submit" class="link-v1 rt">Delete Product</button>
                   </form>       -->               
                        
                   <!--     <form action="completedelivery" method="post" id="deliveryform">
                         
                         <input type="hidden" id="orderid" name="orderid" >
                        
                        </form> -->
                        <!-- <div class="row-total">
                            <div class="float-left">
                                <h3>Sub Total</h3>
                            </div>
                            End align-left
                            <div class="float-right">
                                <p>$1,156.00</p>
                            </div>
                            End align-right
                        </div>
                        <div class="box space-30">
                            <div class="float-left">
                                <a class="link-v1 lh-50 margin-right-20 space-20" href="#" title="CLEAR SHOPPING CART">CLEAR SHOPPING CART</a>
                                <a class="link-v1 lh-50 space-20" href="#" title="UPDATE SHOPPING CART">UPDATE SHOPPING CART</a>
                            </div>
                            End float left
                            <div class="float-right">
                                <a class="link-v1 lh-50 bg-brand" href="index.html" title="CONTINUS SHOPPING">CONTINUS SHOPPING</a>
                            </div>
                            End float-right
                        </div> -->
                        <!-- End box -->
                       <!--  <div class="box cart-total space-30">
                            <div class="row">
                                <div class="col-md-4 space-30">
                                    <div class="item coupon-code">
                                        <h3 class="title">COUPON CODE</h3>
                                        <p>Enter your coupon code if you have one</p>
                                        <form enctype="multipart/form-data">
                                            <div class="form-group">
                                                <input type="text" class="form-control space-20" id="coundpon">
                                            </div>
                                        </form>
                                        <a class="link-v1 lh-50 rt" href="#" title="apply coupon">APPLY COUPON</a>
                                    </div>
                                </div>
                                <div class="col-md-4 space-30">
                                    <div class="item">
                                        <h3 class="title">ESTIMEDE SHIPPING AND TAX</h3>
                                        <p>Enter your destinetion to get a shipping estimede </p>
                                        <form enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label class=" control-label" for="inputcountry">Country</label>
                                                <input type="text" class="form-control space-20" id="inputcountry">
                                            </div>
                                            <div class="form-group">
                                                <label class=" control-label" for="state">STATE/PROVINCE <span>*</span></label>
                                                <input type="text" class="form-control space-20" id="state">
                                            </div>
                                            <div class="form-group">
                                                <label class=" control-label" for="zip-code">ZIP/POSTAL CODE <span>*</span></label>
                                                <input type="text" class="form-control space-20" id="zip-code">
                                            </div>
                                        </form>
                                        <a class="link-v1 lh-50 rt" href="#" title="ESTIMADE">ESTIMADE</a>
                                    </div>
                                </div>
                                End col-md-4
                                <div class="col-md-4 space-30">
                                    <div class="item">
                                        <h3 class="title">CART TOTAL</h3>
                                        <p class="box"><span class="float-left">SHIPPING</span><span class="float-right">$52.00</span></p>
                                        <p class="box space-30"><span class="float-left"><b>SUBTOTAL</b></span><span class="float-right"><b class="color-brand">$5,200.00</b></span></p>
                                        <a class="link-v1 lh-50 rt" href="./checkout.html" title="POCEEED TO CHECKOUT">POCEEED TO CHECKOUT</a>
                                    </div>
                                </div>
                                End col-md-4
                            </div>
                        </div> -->
                        <!-- End box -->
                </div>
                <!-- End container -->
            </div>
            <!-- End cat-box-container -->
        </div>
        
         <jsp:include page="footer.jsp" />  
         
        