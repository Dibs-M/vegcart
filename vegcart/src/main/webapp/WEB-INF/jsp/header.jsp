<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
 <c:if test="${not empty loginvendor}">
   console.log("anil0")
<c:out value="calling vendorlogin" />  
 <jsp:include page="vendorHeader.jsp" /> 
 </c:if>
  <c:if test="${not empty loginuser}">
  <c:out value="calling userHeader" />  
  console.log("anil1")
  
 <jsp:include page="userHeader.jsp" /> 
 </c:if>
  <c:if test="${empty loginvendor && empty loginuser}">
  console.log("anil2")
  <jsp:include page="mainHeader.jsp" /> 
  </c:if>
 
