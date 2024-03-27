<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<title>Language Demo</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#">Navbar</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNav">
	      <ul class="navbar-nav ms-auto"> <!-- Add ms-auto class here -->
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            Languages
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	            <!-- <li><a class="dropdown-item" href="LanguageLocale?language=en_UK">English</a></li>
	            <li><a class="dropdown-item" href="LanguageLocale?language=my_MY">Malay</a></li>
	            <li><a class="dropdown-item" href="LanguageLocale?language=gr_GR">German</a></li>-->
	            <li><a class="dropdown-item" href="LanguageLocale?url=<%= request.getRequestURL() %>&language=en_UK">English</a></li>
	            <li><a class="dropdown-item" href="LanguageLocale?url=<%= request.getRequestURL() %>&language=my_MY">Malay</a></li>
	            <li><a class="dropdown-item" href="LanguageLocale?url=<%= request.getRequestURL() %>&language=gr_GR">German</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>

	
	<h3>Locale of ${country}</h3>
	<fmt:setLocale value="${language }"/>
	
	<fmt:setBundle var="BundleContent" basename="com.mvc.login.resources.content"/>
	<br><h1><fmt:message key="message" bundle="${BundleContent}"></fmt:message></h1>
	<br>
	<fmt:message key="message" bundle="${BundleContent}"></fmt:message>
	<br>
	
<!-- Bootstrap JS (optional, for dropdown functionality) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

