<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
 <c:if test="${not empty loginvendor && loginvendor.userType=='Vendor'}">
 hello1
  <jsp:include page="vendorHeader.jsp" /> 
 </c:if>
  <c:if test="${not empty user && user.userType=='User'}">
  hello2
   <jsp:include page="userHeader.jsp" /> 
 </c:if>
  <c:if test="${empty loginvendor && empty loginuser}">
  hello3
   <jsp:include page="mainHeader.jsp" /> 
  </c:if>
 
