<header class="w3-display-container w3-grayscale-min"
	style="margin-top: -1%">
	<img class="bgimg-1" src="${images}/bgImage.jpg" alt="MY Image">
	<div class="w3-display-left w3-text-white" style="padding: 48px">
		<h2>
			<b>Welcome To Eldora Do Holiday</b>
		</h2>
		<a
			class="w3-button w3-black w3-padding-large w3-large w3-margin-top w3-hover-green"
			href="${contextRoot}/register">JOIN NOW</a>
	</div>
	<div class="w3-display-bottomleft w3-text-grey w3-large"
		style="padding: 24px 48px">
		<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
			class="fa fa-instagram w3-hover-opacity"></i> <i
			class="fa fa-snapchat w3-hover-opacity"></i> <i
			class="fa fa-pinterest-p w3-hover-opacity"></i> <i
			class="fa fa-twitter w3-hover-opacity"></i> <i
			class="fa fa-linkedin w3-hover-opacity"></i>
	</div>
</header>
<div class="container-fluid text-center">
	<div class="row">
		<%@include file="include/left_side.jsp"%>
		<div class="col-sm-7">

			<c:forEach items="${resortList}" var="resorts">
				<div class="w3-row-padding w3-center w3-margin-top">
					<div class="w3-card w3-container" style="min-height: 380px">
						<div class="w3-content">
							<br>
							<div class="w3-half w3-center">
								<img src="${images}/resort${resorts.id}.jpg"
									style="width: 100%; height: 200px">
							</div>

							<div class="w3-half">
								<h2>${resorts.name}</h2>
								<p>Number of Room: ${resorts.room}</p>
								<p>Room Available: ${resorts.availability}</p>
								<c:if test="${resorts.swimming_pool == true}">
									<p>Swimming Pool: YES</p>
								</c:if>
								<p>Sauna: Available at every room</p>
							</div>
							<div class="text-left">
								<p class="w3-padding-32">
									<b>Description:</b> <br>${resorts.description}
								</p>
								<div id="buttom-up">
									<a href="${contextRoot}/resort/${resorts.id}"
										class="btn btn-info">Details</a>
									<c:if test="${not empty emailID}">
										<a class="btn btn-success"
											href="${contextRoot}/resort/${resorts.id}/book">Book</a>
									</c:if>
								</div>
							</div>
							<br>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
		<%@include file="include/right_side.jsp"%>
	</div>
</div>

