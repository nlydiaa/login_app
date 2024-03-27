<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>

<!-- Locale to run in different languages -->
<fmt:setLocale value="${language}"/>
<fmt:setBundle var="BundleContent" basename="com.mvc.login.resources.content"/>

<html>

<head>
	<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
	<title><fmt:message key="loginPageTitle"></fmt:message></title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="./resources/stylesheet/login.css">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <div class="container-fluid">
	    <div class="collapse navbar-collapse" id="navbarNav">
	      <ul class="navbar-nav ms-auto"> <!-- Add ms-auto class here -->
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            <fmt:message key="Languages" bundle="${BundleContent}"></fmt:message>
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	            <li><a class="dropdown-item" href="LanguageLocale?url=<%= request.getRequestURL() %>&language=en_UK">English</a></li>
	            <li><a class="dropdown-item" href="LanguageLocale?url=<%= request.getRequestURL() %>&language=my_MY">Malay</a></li>
	            <li><a class="dropdown-item" href="LanguageLocale?url=<%= request.getRequestURL() %>&language=gr_GR">German</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	
	<div class="container-fluid">
			<form class="mx-auto" action="LoginServlet" method="post">
				<img src="./resources/images/logo.png" alt="logo">
				<h3 class="text-center"><fmt:message key="Login" bundle="${BundleContent}"></fmt:message></h3>
				<div class="mb-3 mt-5">
					<label for="username" class="form-label">
						<fmt:message key="Username" bundle="${BundleContent}"></fmt:message>:
					</label>
					<input type="text" id="username" name="username" class="form-control" required>				
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">
						<fmt:message key="Password" bundle="${BundleContent}"></fmt:message>:
					</label>
					<input type="password" id="password" name="password" class="form-control" required>
				</div>
				
				<%-- Display error message if present --%>
					
					<c:if test="${not empty error}">
						<p style="color: red;"><fmt:message key="${error}" bundle="${BundleContent}"></fmt:message></p>
					</c:if>
				
				<input class="btn btn-primary mt-4" type="submit" value=<fmt:message key="Enter" bundle="${BundleContent}"></fmt:message>>
			</form>
	</div>
	
	<!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" crossorigin="anonymous"></script>

</body>
</html>