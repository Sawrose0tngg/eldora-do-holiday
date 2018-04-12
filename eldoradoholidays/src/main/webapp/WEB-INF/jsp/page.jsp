<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eldora Do Holidays - ${title}</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Custom styles for this template -->
<link href="${css}/custom.css" rel="stylesheet">

</head>
<body>


	<%@include file="include/header.jsp"%>

	<!-- 	Page Content -->
	<c:if test="${userClickHome == true}">
		<%@ include file="home.jsp"%>
	</c:if>
	<c:if test="${userClickAbout == true}">
		<%@ include file="about.jsp"%>
	</c:if>
	<c:if test="${userClickContact == true}">
		<%@ include file="contact.jsp"%>
	</c:if>
	<c:if test="${userClickProfile == true}">
		<%@ include file="profile.jsp"%>
	</c:if>
	<c:if test="${userClickResort == true}">
		<%@ include file="resort.jsp"%>
	</c:if>

	<!-- 	Footer -->
	<%@include file="include/footer.jsp"%>

<!-- 	Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>
	<script src="${js}/custom.js"></script>

	<script type="text/javascript">
		window.menu = '${title}';//global variable value of title name
	</script>

</body>
</html>