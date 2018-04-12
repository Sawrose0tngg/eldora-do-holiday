<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<c:if test="${loginFail == true and loginstatus == false}">
	<script>
		alert('Login Failed...')
	</script>
</c:if>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="${contextRoot}/home">Eldora Do Holidays</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item" id="home"><a class="nav-link"
					href="${contextRoot}/home">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item" id="about"><a class="nav-link"
					href="${contextRoot}/about">About</a></li>
				<li class="nav-item" id="contact"><a class="nav-link"
					href="${contextRoot}/contact">Contact</a></li>
				<c:choose>
					<c:when test="${not empty emailID }">
						<li class="nav-item"><a class="nav-link">Hello ${emailID}</a></li>
					</c:when>
					<c:otherwise>
						<li id="login"><a
							onclick="document.getElementById('loginModal').style.display='block'">Login</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
	<div id="loginModal" class="w3-modal">
		<div class="w3-modal-content w3-card-4 w3-animate-zoom"
			style="max-width: 600px">

			<div class="w3-center">
				<br> <span
					onclick="document.getElementById('loginModal').style.display='none'"
					class="w3-button w3-xlarge w3-hover-red w3-display-topright"
					title="Close Modal">&times;</span><i class="fa fa-user"
					style="font-size: 125px"></i>
			</div>

			<sf:form class="w3-container" id="loginForm"
				action="${contextRoot}/login" method="POST"
				modelAttribute="loginUser">

				<div class="w3-section">

					<c:if test="${not empty message}">
						<div class="w3-section">
							<label class="alert alert-danger text-center" style="width: 100%">${message}</label>
						</div>
					</c:if>

					<label><b>Username</b></label>
					<sf:input class="w3-input w3-border w3-margin-bottom" type="text"
						placeholder="Enter Username" path="email" />
					<label><b>Password</b></label>
					<sf:input class="w3-input w3-border" type="password"
						placeholder="Enter Password" path="password" />

					<button class="w3-button w3-block w3-green w3-section w3-padding"
						type="submit">Login</button>
					<input type="hidden" name="id"
						value="${emailId.id}" />
				</div>
			</sf:form>

			<div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
				<p>
					Signup<a href="${contextRoot}/register" style="color: blue;">
						here? </a>new user
				</p>
			</div>

		</div>
	</div>
</nav>