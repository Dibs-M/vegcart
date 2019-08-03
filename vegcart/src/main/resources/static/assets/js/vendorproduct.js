function fecthProductImage(selectItem){
	var imagePath='assets/images/products/';
	var pimappingele = $('#productimagemapping').val().split(",");
	
	$('#product_image').attr("src","");
	for (i=0;i<pimappingele.length;i++){
	     if(pimappingele[i].includes(selectItem.value)){
	    	 
	    	 var pimappinga=pimappingele[i].split(":");
	    	 imagePath=imagePath+pimappinga[1];
	    	 $('#product_image').attr("src",imagePath);
	    	 $('#productImage').val(pimappinga[1]);
	    	 break;
	     }
	     
	}
	
	
	
}