<br>
<div class="container-fluid text-center">
	<div class="row">
		<%@include file="include/left_side.jsp"%>

		<div class="col-sm-7 w3-card">
			<br>
			<h2>${singleresort.name}</h2>
			<div class="w3 w3-center">
				<img src="${images}/resort${singleresort.id}.jpg"
					style="width: 100%; height: 200px">
			</div>
			<div class="w3-half">
				<br> <br>
				<p>Number of Room: ${singleresort.room}</p>
				<p>Room Available: ${singleresort.availability}</p>
				<c:if test="${singleresort.swimming_pool == true}">
					<p>Swimming Pool: YES</p>
				</c:if>
				<p>Sauna: Available at every room</p>
				
			</div>
			<div class="w3-half text-left">
				<p class="w3-padding-32">
					<b>Description:</b> <br>${singleresort.description}
				</p>
				
			</div>
			<hr>
			<div>
				<c:if test="${singleresort.id%2 == 0}">
					<h5><b>Holiday Offer:</b></b></h5>
					<table>
						<tr>
							<th>Sun Burners</th>
							<th>Winter</th>
						</tr>
						<tr>
							<td>
								<ul style="float: right">
									<li>Beach Range: 50sq.km</li>
									<li>Night Culture Dance: If Interested($60 extra)</li>
								</ul>
							</td>
							<td>
								<ul>
									<li>Winter Sports</li>
									<li>Snow skate: cost $100</li>
								</ul>
							</td>
						</tr>
					</table>
				</c:if>
				<c:if test="${singleresort.id%2 != 0}">
					<h5><b>Holiday Offer:</b></h5>
					<table>
						<tr>
							<th>Sun Burners</th>
							<th>Adventure</th>
						</tr>
						<tr>
							<td>
								<ul>
									<li>Beach Range: 20sq.km</li>
									<li>Night Culture Dance: If Interested($30 extra)</li>
									<li>Surfing: extra cost $100 with full safety</li>
								</ul>
							</td>
							<td>
								<ul>
									<li>Bicycle Riding: extra cost $5 </li>
									<li>Bungee Jump: $80</li>
									<li>Trekking: $200</li>
								</ul>
							</td>
						</tr>
					</table>
				</c:if>
				<hr>
				<h5>
					<b>Weather Condition</b><br><br>
					<p>Temperature: 23&#8451; <br>Rainfall: Normal</p>
				</h5>
				<hr>
			</div>

			<div class="w3-container" id="apartment">
				<h2 class="w3-text-green">Our Restaurant</h2>
				<div class="w3-display-container mySlides">
					<img src="${images}/food3.jpg"
						style="width: 100%; margin-bottom: -6px; height: 300px">
					<div class="w3-display-bottomleft w3-container w3-black">
						<p>Food Serve</p>
					</div>
				</div>
				<div class="w3-display-container mySlides">
					<img src="${images}/food4.jpg"
						style="width: 100%; margin-bottom: -6px; height: 300px">
					<div class="w3-display-bottomleft w3-container w3-black">
						<p>Morning Dishes</p>
					</div>
				</div>
				<div class="w3-display-container mySlides">
					<img src="${images}/food5.jpg"
						style="width: 100%; margin-bottom: -6px; height: 300px">
					<div class="w3-display-bottomleft w3-container w3-black">
						<p>Afternoon Dishes</p>
					</div>
				</div>
				<div class="w3-display-container mySlides">
					<img src="${images}/food6.jpg"
						style="width: 100%; margin-bottom: -6px; height: 300px">
					<div class="w3-display-bottomleft w3-container w3-black">
						<p>Evening Dishes</p>
					</div>
				</div>
			</div>
			<div class="w3-row-padding w3-section">
				<div class="w3-col s3">
					<img class="demo w3-opacity w3-hover-opacity-off"
						src="${images}/food3.jpg"
						style="width: 100%; cursor: pointer; height: 110px"
						onclick="currentDiv(1)" title="Food Serve">
				</div>
				<div class="w3-col s3">
					<img class="demo w3-opacity w3-hover-opacity-off"
						src="${images}/food4.jpg"
						style="width: 100%; cursor: pointer; height: 110px"
						onclick="currentDiv(2)" title="Morning Dishes">
				</div>
				<div class="w3-col s3">
					<img class="demo w3-opacity w3-hover-opacity-off"
						src="${images}/food5.jpg"
						style="width: 100%; cursor: pointer; height: 110px"
						onclick="currentDiv(3)" title="Afternoon Dishes">
				</div>
				<div class="w3-col s3">
					<img class="demo w3-opacity w3-hover-opacity-off"
						src="${images}/food6.jpg"
						style="width: 100%; cursor: pointer; height: 110px"
						onclick="currentDiv(4)" title="Evening Dishes">
				</div>
				<c:if test="${not empty emailID}">
					<div id="buttom-up">
						<br> <a class="btn btn-success"
							href="${contextRoot}/resort/${singleresort.id}/book">Book Now</a>
					</div>
				</c:if>

			</div>
		</div>

		<%@include file="include/right_side.jsp"%>
	</div>
</div>
<br>
<script>
	// Script to open and close sidebar when on tablets and phones
	function w3_open() {
		document.getElementById("mySidebar").style.display = "block";
		document.getElementById("myOverlay").style.display = "block";
	}

	function w3_close() {
		document.getElementById("mySidebar").style.display = "none";
		document.getElementById("myOverlay").style.display = "none";
	}

	// Slideshow Apartment Images
	var slideIndex = 1;
	showDivs(slideIndex);

	function plusDivs(n) {
		showDivs(slideIndex += n);
	}

	function currentDiv(n) {
		showDivs(slideIndex = n);
	}

	function showDivs(n) {
		var i;
		var x = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("demo");
		if (n > x.length) {
			slideIndex = 1
		}
		if (n < 1) {
			slideIndex = x.length
		}
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className
					.replace(" w3-opacity-off", "");
		}
		x[slideIndex - 1].style.display = "block";
		dots[slideIndex - 1].className += " w3-opacity-off";
	}
</script>