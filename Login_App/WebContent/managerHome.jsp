<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="com.mvc.login.model.User" %>

<!DOCTYPE html>

<!-- Locale to run in different languages -->
<fmt:setLocale value="${language}"/>
<fmt:setBundle var="BundleContent" basename="com.mvc.login.resources.content"/>

<html>

<head>
	<meta charset="ISO-8859-1" name="viewport" content="width=device-width, initial-scale=1">
	<title><fmt:message key="Home"></fmt:message></title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="./resources/stylesheet/studentHome.css">

</head>

<body>
	<% User user = (User)session.getAttribute("User_Info"); %>
	<div class="wrapper">
		<aside id="sidebar" class="js-sidebar">
			<!-- Content for sidebar -->
			<div class="h-100">
				<div class="sidebar-logo">
					<a href="#">SingaCode</a>
				</div>
				<hr>
				<div class="sidebar-header">
					<div class="user-pic">
						<img class="img-responsove img-rounded" src="./resources/images/user.png" alt="user picture">
					</div>
					<div class="user-info">
						<span class="username">
							<strong><%=user.getUsername() %></strong>
						</span>
						<span class="user-role">
							<%=user.getRole()%>
						</span>
					</div>
				</div>
				<hr>
				<ul class="sidebar-nav">
					<li class="sidebar-header">
						<fmt:message key="managerElement" bundle="${BundleContent}"></fmt:message>
					</li>
					<li class="sidebar-item active">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door-fill" viewBox="0 0 16 16">
							<path d="M6.5 14.5v-3.505c0-.245.25-.495.5-.495h2c.25 0 .5.25.5.5v3.5a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4a.5.5 0 0 0 .5-.5"/>
						</svg>
						<a href="managerHome.jsp" class="sidebar-link">
							<fmt:message key="Home" bundle="${BundleContent}"></fmt:message>
						</a>
					</li>
					<li class="sidebar-item">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-week" viewBox="0 0 16 16">
						 	<path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5z"/>
							<path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5M1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4z"/>
						</svg>
						<a href="bookingTickets.jsp" class="sidebar-link">
							<fmt:message key="managerTickets" bundle="${BundleContent}"></fmt:message>
						</a>
					</li>
				</ul>
				<div class="sidebar-footer">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0z"/>
					  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708z"/>
					</svg>
					<a href="./LogoutServlet" class="sidebar-footer-link">
						<fmt:message key="logout" bundle="${BundleContent}"></fmt:message>
					</a>
				</div>
			</div>
		</aside>
		<!-- Main Body -->
		<div class="main">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			  <div class="container-fluid">
			    <div class="collapse navbar-collapse" id="navbarNav">
			      <ul class="navbar-nav ms-auto"> <!-- Add ms-auto class here -->
			        <li class="nav-item dropdown">
			          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			            <fmt:message key="Languages" bundle="${BundleContent}"></fmt:message>
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
			<div class="content px-3 py-2">
				<div class="container-fluid">
					<div class="mb-3">
						<h4><fmt:message key="managerHomeTile" bundle="${BundleContent}"></fmt:message></h4>
					</div>
					<div class="container ticket-container">
						<div class="header-container">
							<h4><fmt:message key="ticketSummaryTitle" bundle="${BundleContent}"></fmt:message></h4>
						</div>
						<div class="row">
							<div class="col ticket-col">
							     <p><fmt:message key="ticketOverdue" bundle="${BundleContent}"></fmt:message></p>
							     <h5>0</h5>
						    </div>
						    <div class="col ticket-col">
						      	<p><fmt:message key="ticketOpen" bundle="${BundleContent}"></fmt:message></p>
						    	<h5>12</h5>
						    </div>
						    <div class="col ticket-col">
						      	<p><fmt:message key="ticketOnHold" bundle="${BundleContent}"></fmt:message></p>
						    	<h5>2</h5>
						    </div>
						   <div class="col ticket-col">
						      	<p><fmt:message key="ticketDuetoday" bundle="${BundleContent}"></fmt:message></p>
						    	<h5>5</h5>
						    </div>
						</div>
					</div>
					<div>
						<div class="container activities-container">
							<h2 class="side-title"><fmt:message key="activityTitle" bundle="${BundleContent}"></fmt:message></h2>
							<div class="container activity-content">
								<div class="row">
									<div class="col-sm-2">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check-fill" viewBox="0 0 16 16">
										  <path d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v1h16V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4zM16 14V5H0v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2m-5.146-5.146-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708.708"/>
										</svg>
									</div>
									<div class="col">
										<p><fmt:message key="activityDesc" bundle="${BundleContent}"></fmt:message></p>
										<p><fmt:message key="activityApprovedWhen" bundle="${BundleContent}"></fmt:message></p>
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-2">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check-fill" viewBox="0 0 16 16">
										  <path d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v1h16V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4zM16 14V5H0v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2m-5.146-5.146-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708.708"/>
										</svg>
									</div>
									<div class="col">
										<p><fmt:message key="activityDesc" bundle="${BundleContent}"></fmt:message></p>
										<p><fmt:message key="activityApprovedWhen" bundle="${BundleContent}"></fmt:message></p>
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-2">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check-fill" viewBox="0 0 16 16">
										  <path d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v1h16V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4zM16 14V5H0v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2m-5.146-5.146-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708.708"/>
										</svg>
									</div>
									<div class="col">
										<p><fmt:message key="activityDesc" bundle="${BundleContent}"></fmt:message></p>
										<p><fmt:message key="activityApprovedWhen" bundle="${BundleContent}"></fmt:message></p>
									</div>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" crossorigin="anonymous"></script>

</body>
</html>