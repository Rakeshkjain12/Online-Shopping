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

<title>Online Shopping - ${title}</title>

<script>
window.menu='${title}';
window.contextRoot='${contextRoot}';
</script>

<!-- Bootstrap core CSS -->
<link href="${vendor}/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!--DataTable Bootstrap -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="${css}/shop-homepage.css" rel="stylesheet">

<!-- Test -->

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<body>
<div class="wrapper">
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="${contextRoot}/home">Home</a>
      
    </div>
  </nav>

	<!-- Page Content -->
	
	
	
	         <div class="content">
	         
	            <div class ="container">
	               
	               <div class="row">
	               
	                    <div class="col-xs-12">
	                            
	                            <div class="jumbotron">
	                            
	                                 <h1>${errorTitle}</h1>   
	                                 <hr/>
	                                 <blockquote>
	                                       ${errorDescription}
	                                 
	                                 </blockquote>
	                                                         
	                            
	                            </div>        
	                    
	                    
	                    </div>
	               
	               </div>
	            
	            </div>
	         
	         
	         
	         </div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
    <!-- Footer -->
	<jsp:include page="include/footer.jsp" />

	</div>
</body>

</html>
