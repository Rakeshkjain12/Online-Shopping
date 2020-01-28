<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>

<s:url var="css" value="/resources/css" />
<s:url var="images" value="/resources/images" />
<s:url var="vendor" value="/resources/vendor" />
<s:url var="js" value="/resources/js" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en"> 

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">
<title>Online Shopping - ${title}</title>

<script>
window.menu='${title}';
window.contextRoot='${contextRoot}';
</script>

<!-- Bootstrap4 core CSS -->
<link href="${vendor}/bootstrap/css/bootstrap.css" rel="stylesheet"> 
 <%--  <link href="${vendor}/bootstrap/css/bootstrap.min.css" rel="stylesheet">  --%>


<!--DataTable Bootstrap -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">


<%-- <link href="${css}/bootstrap.min.css" rel="stylesheet"> --%>
<%-- <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> -->
  <<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> --%>
<!-- Custom styles for this template -->
<!--bootstrap 3 for glyphicon icon  -->
   <%--  <link href="${css}/bootstrap.min.css" rel="stylesheet">
     <link href="${css}/bootstrap.css" rel="stylesheet">  --%> 
     
     <link href="${css}/glyphicon.css" rel="stylesheet">
     <link href="${css}/myapp.css" rel="stylesheet">
</head>

<body>
<div class="wrapper">



    
	<!-- Navigation -->
	<jsp:include page="include/navbar.jsp" />

	<!-- Page Content -->
	
	<div class="content">
	<!--Loading the page content  -->
	<c:if test="${userClickHome == true }">
		<%@include file="home.jsp" %>
	</c:if>
	
		<c:if test="${userClickAbout == true }">
		<%@include file="about.jsp" %>
	</c:if>
	
		<c:if test="${userClickContact == true }">
		<%@include file="contact.jsp" %>
	</c:if>
	
	<c:if test="${userClickAllProducts == true or userClickCategoryProducts==true}">
		<%@include file="listProducts.jsp" %>
	</c:if>
	
	<c:if test="${userClickShowProduct == true }">
		<%@include file="singleProduct.jsp" %>
	</c:if>
	
		<c:if test="${userClickManageProducts == true }">
		<%@include file="manageProducts.jsp" %>
	</c:if>
	
	</div>
	<!-- Footer -->
	<jsp:include page="include/footer.jsp" />

	<!-- Bootstrap core JavaScript -->
	<script src="${vendor}/jquery/jquery.min.js"></script>
	
	<script src="${vendor}/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	
	
	
	
	<!--DATA TABLE  Plugin -->
	<script src="${js}/jquery.dataTables.js"></script>
	
	<!--jquery validation  -->
	<script src="${js}/jquery.validate.js"></script>
	<script src="${js}/jquery.validate.min.js"></script>
	
		<!--DATA TABLE Bootstrap js  -->
	<script src="${js}/dataTables.bootstrap4.js"></script>
		
	
	   <!-- BootBoxJs -->
       <script src="${js}/bootbox.min.js"></script>
	
	<!--Self coded JavaScript  -->
    	<script src="${js}/myapp.js"></script>

  
    	
    	</div>
</body>

</html>
