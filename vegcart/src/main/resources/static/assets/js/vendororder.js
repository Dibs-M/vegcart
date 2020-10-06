function completeVendorOrder(id){
	$('#orderid').val(id);
	$('#deliveryform').submit();
	
}


function openVendorOrderPage(){
	$('#vendororderform').submit();
}


function openVendorProductEditPage(id){
//	alert('id'+id)
	$('#editvendorproduct').val(id);
	$('#editform').submit();
	
}