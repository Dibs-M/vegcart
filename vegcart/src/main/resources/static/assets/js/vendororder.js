function completeVendorOrder(id){
	$('#orderid').val(id);
	$('#deliveryform').submit();
	
}


function openVendorOrderPage(){
	$('#vendororderform').submit();
}