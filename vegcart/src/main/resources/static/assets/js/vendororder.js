function completeVendorOrder(id){
	$('#orderid').val(id);
	$('#deliveryform').submit();
	
}


function openVendorOrderPage(){
	//alert("hello");
	$('#vendororderform').submit();
}


function openVendorProductEditPage(id){
//	alert('id'+id)
	$('#editvendorproduct').val(id);
	$('#editform').submit();
	
}

function sendOtp(){
	
	 $.ajax({url: "/sendotp?mobile="+$('#vendorMobile').val(), success: function(result){
		   //alert(result.message);
		   $('#otpdiv').text(result.message);
		  }});
}

/*
function onVendorOrderLoad(){
	alert("Hello");
	var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
		  var resobj,txt="";
	    if (this.readyState == 4 && this.status == 200) {
	     alert(this.responseText) ;	
	     resobj = JSON.parse(this.responseText);
	     txt += "<table border='1'>"
		     for (x in resobj )
		    	 {
		    	 txt += "<tr><td>" + resobj[x].customerMobile + "</td><td>" + resobj[x].productName + "</td>"+"<td>" + resobj[x].productPricePerUnit + "</td>"+"<td>" + resobj[x].productActualQuantity + "</td>"+"<td>" + resobj[x].discount + "</td>"+"<td>" + resobj[x].totalAmount + "</td>"+"</td>"+"<td>" + resobj[x].orderDate + "</td>"+"</td>"+"<td>" + resobj[x].customerAddress + "</td>"
		    	 txt +="<td><a class='link-v1 rt' href='#' title='order delivery' onclick=completeVendorOrder("+resobj[x].id+");>Order Pending</a></td></tr>";
	
		    	 }
	     txt += "</table>"  
		    	 document.getElementById("tablebodyid").innerHTML = txt;

	    }
	  };
	  xhttp.open("GET", "vendororder11", true);
	  xhttp.send();
}
function onVendorOrderLoad2(){
	$.get("vendororder11",
	    	function(resobj,status){
		alert(status);
		txt="";
		  txt += "<table border='1'>"
			     for (x in resobj )
			    	 {
			    	 txt += "<tr><td>" + resobj[x].customerMobile + "</td><td>" + resobj[x].productName + "</td>"+"<td>" + resobj[x].productPricePerUnit + "</td>"+"<td>" + resobj[x].productActualQuantity + "</td>"+"<td>" + resobj[x].discount + "</td>"+"<td>" + resobj[x].totalAmount + "</td>"+"</td>"+"<td>" + resobj[x].orderDate + "</td>"+"</td>"+"<td>" + resobj[x].customerAddress + "</td>"
			    	 txt +="<td><a class='link-v1 rt' href='#' title='order delivery' onclick=completeVendorOrder("+resobj[x].id+");>Order Pending</a></td></tr>";
		
			    	 }
		     txt += "</table>"  
			    	 document.getElementById("tablebodyid").innerHTML = txt;
});
}

*/
