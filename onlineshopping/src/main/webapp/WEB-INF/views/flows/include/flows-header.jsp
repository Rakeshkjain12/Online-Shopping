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



<!--DataTable Bootstrap -->
<link href="${css}/dataTables.bootstrap4.css" rel="stylesheet">

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
    <%@include file="flows-navbar.jsp" %>

	<!-- Page Content -->
	
	<div class="content">