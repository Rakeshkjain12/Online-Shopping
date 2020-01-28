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

<!-- Bootstrap4 core CSS -->
      <link href="${vendor}/bootstrap/css/bootstrap.css" rel="stylesheet"> 
     <link href="${css}/glyphicon.css" rel="stylesheet">
     <link href="${css}/myapp.css" rel="stylesheet">
</head>

<body>
<div class="wrapper">
 
	<!-- Navigation -->
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="${contextRoot}/home">Online Shopping</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			
			
			
			
		</div>
	</div>
</nav>
	
	<!-- /////////////////////////////////////////////// -->
	<%--  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	    <div class="container">
	       <div class="navbar-header">
                   <a class=""navbar-brand" href="${contextRoot}/home">Online Shopping </a>	       
	       </div>
	    </div>
	 </nav> --%>

	<!-- Page Content -->
	
	<div class="content">
	<!--Loading the page content  -->
	
	     <div class="container">
	     <!--this will be displayed if credentials are wrong  -->
	         <c:if test="${not empty message}">
	         <div class="row">
	              <div class="col-md-offset-3 col-md-6">
	                 <div class="alert alert-danger">
	                    ${message}  
	                 </div>
	              </div>
	         </div>
	         
	         </c:if>
	         
	          <!--this will be displayed when User Logged Out  -->
	         <c:if test="${not empty logout}">
	         <div class="row">
	              <div class="col-md-offset-3 col-md-6">
	                 <div class="alert alert-danger">
	                    ${logout}  
	                 </div>
	              </div>
	         </div>
	         
	         </c:if>
	     
	        <div class="row">
	          <div class="col-md-offset-3 col-md-6">
	            
	            <div class="panel panel-primary">
	               <div class="panel-heading">
	                  <h4>Login</h4>
	               </div>
	               
	               <div class="panel-body">
	                 <form action="${contextRoot}/login" method="post" class="form-horizontal" id="loginForm">
	                 
	                    <div class="form-group">
	                      <label for="username" class="col-md-4 control-label">Email:</label>
	                      <div class="col-md-8">
	                        <input type="text" name="username" id="username" class="form-control">
	                      </div>
	                    </div>
	                    
	                    <div class="form-group">
	                      <label for="password" class="col-md-4 control-label">Password:</label>
	                      <div class="col-md-8">
	                        <input type="password" name="password" id="password" class="form-control">
	                      </div>
	                    </div>
	                    
	                    <div class="form-group">
	                      <div class="col-md-offset-4 col-md-8 ">
	                        <input type="submit" value="login" class="btn btn-primary">
	                         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	                      </div>
	                    </div>
	                 </form>
	               </div>
	            
	            <div class="panel-footer">
	              <div class="text-right">
	                 New User - <a href="${contextRoot}/register">Register Here</a>
	              </div>
	            </div>
	            
	            
	            </div>
	            
	          </div>
	        
	        </div>
	     </div>
	
	
	
	
	
	</div>
	<!-- Footer -->
	<jsp:include page="include/footer.jsp" />

	<!-- Bootstrap core JavaScript -->
	<script src="${vendor}/jquery/jquery.min.js"></script>
	
	<script src="${vendor}/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	<!--jquery validation  -->
	<script src="${js}/jquery.validate.js"></script>
	<script src="${js}/jquery.validate.min.js"></script>

	<!--Self coded JavaScript  -->
    	<script src="${js}/myapp.js"></script>
	
    	</div>
</body>

</html>
