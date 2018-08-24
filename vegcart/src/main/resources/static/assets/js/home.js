$(document).ready(function(){
    
});

function addItemIntoCart(productId,image,name,price,priceAfterdiscount){
	
    var itemid=$("#cartitemid").val();
	var html='<li id="li_'+itemid+'"><a href="#" title="" class="cart-product-image"><img src="assets/images/products/'+image+'" alt="Product"></a>';
	html+='<div class="text"><p class="product-name">'+name+'</p>';
	html+='<p class="product-price"><span class="price-old"> INR '+price+'</span><span class="price"> INR '+priceAfterdiscount+'</span></p>';
	html+='<p class="qty">QTY:01</p></div>';
	html+='<input type="hidden" id="item_price_'+itemid+'" value="'+priceAfterdiscount+'">';
	html+='<input type="hidden" id="product_id_'+itemid+'" value="'+productId+'">';
	html+='<a class="close" href="#" title="remove" onclick="removeItemFromCart('+itemid+')"><i class="fa fa-times-circle"></i></a></li>';
	//alert(html);
	var total=parseFloat($("#totalcartamounth").val())+parseFloat(priceAfterdiscount);
	$("#totalcartamount").text(" INR "+total);
	$("#totalcartamounth").val(total);
	var cartCount=parseInt($("#cart-count").text(), 10)+1;
	$("#cart-count").text(cartCount);
	
	$("#cartitemid").val(Number(itemid)+1);
	$("#mycart").append(html);
}

function removeItemFromCart(id){
	var total=parseFloat($("#totalcartamounth").val())-parseFloat($("#item_price_"+id).val());
	$("#totalcartamount").text(" INR "+total);
	$("#totalcartamounth").val(total);
	
	var cartCount=parseInt($("#cart-count").text(), 10)-1;
	$("#cart-count").text(cartCount);
	
	$("#li_"+id).remove();
}

function checkout(){
	var ids="";
	$("input[id^='product_id_']").each(function (i, el) {
		ids=ids+el.value+",";
		
    });
	//alert(ids);
	$("#checkoutitems").val(ids);
	$("#checkoutform").submit();
	
}













