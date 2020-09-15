<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
 <c:if test="${not empty loginvendor && loginvendor.userType=='Vendor'}">
  <jsp:include page="vendorHeader.jsp" /> 
 </c:if>
  <c:if test="${not empty user && user.userType=='User'}">
   <jsp:include page="userHeader.jsp" /> 
 </c:if>
  <c:if test="${empty loginvendor && empty loginuser}">
   <jsp:include page="mainHeader.jsp" /> 
  </c:if>
 
