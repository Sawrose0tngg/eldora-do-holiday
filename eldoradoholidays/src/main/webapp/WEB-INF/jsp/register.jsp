<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Now</title>
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Custom styles for this template -->
<link href="${css}/custom.css" rel="stylesheet">

</head>
<body>

	<%@include file="include/header.jsp"%>

	<header class="w3-display-container w3-grayscale-min"
		style="margin-top: -1%"> <img class="bgimg-1"
		src="${images}/registerImg.jpg" alt="MY Image" style="height: 546px">
	<div class="w3-display-left w3-text-white"
		style="padding: 48px; margin-left: 15%; width: 73%">

		<sf:form modelAttribute="user" action="${contextRoot}/register"
			method="POST" class="w3-container w3-card-4 w3-padding-16 w3-white"
			style="margin-top: 1%">
			<c:if test="${not empty message}">
				<div class="alert alert-success alert-dismissible"
					style="text-align: center;">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong class="text-center"
						style="font-size: 18px; text-align: center;">${message}</strong>
				</div>
			</c:if>
			<c:if test="${errorTrue == true }">
				<div class="alert alert-danger alert-dismissible"
					style="text-align: center;">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<strong class="text-center" style="font-size: 18px;">${message}</strong>
				</div>
			</c:if>
			<div class="w3-section">
				<label>Full Name</label>
				<sf:input class="w3-input" type="text" path="name" />
				<sf:errors path="name" cssClass="help-block" element="em" id="error" />
			</div>
			<div class="w3-section">
				<label>Email</label>
				<sf:input class="w3-input" type="text" path="email" />
				<sf:errors path="email" cssClass="help-block" element="em"
					id="error" />
			</div>
			<div class="w3-section">
				<label>Password</label>
				<sf:input class="w3-input" type="password" path="password" />
				<sf:errors path="password" cssClass="help-block" element="em"
					id="error" />
			</div>
			<div class="w3-section">
				<label>Phone</label>
				<sf:input class="w3-input" type="number" path="contact_Number" />
				<sf:errors path="contact_Number" cssClass="help-block" element="em"
					id="error" />
			</div>
			<div class="w3-section">
				<label>Address</label>
				<sf:input class="w3-input" type="text" path="address" />
				<sf:errors path="address" cssClass="help-block" element="em"
					id="error" />
			</div>
			<button type="submit"
				class="w3-button w3-right w3-theme w3-green w3-hover-teal">
				<i class="fa fa-location-arrow fa-1x"></i> Register
			</button>
		</sf:form>
	</div>
	</header>



	<%@include file="include/footer.jsp"%>
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>
	<script src="${js}/custom.js"></script>

</body>
</html>