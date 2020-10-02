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
            </div>`
                <!-- End container -->
           <div class="container container-ver2">
                  

							

			<div class="box cart-container">
							<h2>Edit Products </h2>
                            <form class="form-horizontal" method="Post" action="updateProduct">
                            <input class="form-control" type="hidden" readonly="readonly"  id="id" name="id" value=${vendorProduct.id}>
  							<c:set var="imagemapping" value=""/>
                            <div class="group box space-20">
                                    <label class="control-label" for="inputemailres">Product Name <span class="color">*</span></label>
                                    <%-- <select id="productName" name="productName" class="form-control" onchange="fecthProductImage(this)" >
                                    <option value="Select Product">Select Product</option>
                                    <c:forEach items="${masterproducts}" var="product">
                                    <option value="${product.productName}">${product.productName}</option>
                                    <c:set var="imagemapping" value="${imagemapping}${product.productName}:${product.productImage}," />
                                    </c:forEach> 
                                    <input type="hidden" value="${imagemapping}" id="productimagemapping">
                                    </select>--%>
                                    <input class="form-control" type="text" readonly="readonly"  id="productName" name="productName" value=${vendorProduct.productName}>
                                    
                                </div>
                                
                                <div class="group box space-20">
                                    <a href="#" title="" class="cart-product-image"><img id="product_image" src="" alt="Product" width="10%"></a>
                                    <input type="hidden" name="productImage" id="productImage">
                                </div>
                                
                    
                                  <div class="group box space-20">
                                    <label class="control-label" for="inputemailres">Product Price <span class="color">*</span></label>
                                    <input class="form-control" type="text"  id="productPrice" name="productPrice" value=${vendorProduct.productPrice}>
                                </div>
                                  <div class="group box space-20">
                                    <label class="control-label" for="inputemailres">Product Quantity <span class="color">*</span></label>
                                    <input class="form-control" type="text" id="productStandardQuantity" name="productStandardQuantity" value=${vendorProduct.productStandardQuantity}>
                                </div>
                                 
                       			 <div class="group box space-20">
                                    <label class="control-label" for="inputemailres">Product Unit <span class="color">*</span></label>
                                    <%-- <select id="productUnit" name="productUnit" class="form-control">
                                    <option value="Select Unit">Select Unit</option>
                                    <c:forEach items="${masterunits}" var="unit">
                                    <option value="${unit.unitName}">${unit.unitName}</option>
                                    </c:forEach>
                                    </select> --%>
                                    <input class="form-control" type="text" readonly="readonly"  id="productUnit" name="productUnit" value=${vendorProduct.productUnit}>
                                </div>
                                
                                <div class="group box space-20">
                                    <label class="control-label" for="inputemailres">Discount In Rupees <span class="color">*</span></label>
                                    <input class="form-control" type="text" placeholder="Discount In Rupees" id="discount" name="discount" value=${vendorProduct.discount}>
                                </div>
                                 
                                <button type="submit" class="link-v1 rt">Update Product</button>
                            </form>
							</div>
          
                                   
                        
       
    
                <!-- End container -->
            </div>
            <!-- End cat-box-container -->
        </div>
        
         <jsp:include page="footer.jsp" />  
         
        