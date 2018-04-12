<div class="col-sm-3 well">
	<h4>
		<b>Recommended Packages</b>
	</h4>
	<div class="w3-row-padding w3-grayscale">

		<c:choose>
			<c:when test="${winterState.winter == true}">
				<div class="w3-col w3-card m12 w3-margin-bottom"
					id="brochures-image">
					<div>
						<a
							onclick="document.getElementById('autumn').style.display='block'">
							<img src="${images}/autumn.jpg" alt="Image" style="width: 100%">
							<h5 class="text-center">Winter Package</h5>
						</a>
					</div>
				</div>
				<div class="w3-col w3-card m12 w3-margin-bottom"
					id="brochures-image">
					<div>
						<a
							onclick="document.getElementById('winter').style.display='block'">
							<img src="${images}/winter.png" alt="Image" style="width: 100%">
							<h5 class="text-center">Autumn Package</h5>
						</a>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="w3-col w3-card m12 w3-margin-bottom">
					<div id="brochures-image">
						<a
							onclick="document.getElementById('christmas').style.display='block'">
							<img src="${images}/christmas.jpg" alt="Image"
							style="width: 100%">
							<h5 class="text-center">Default Package</h5>
						</a>
					</div>
				</div>
			</c:otherwise>
		</c:choose>

	</div>
</div>
<div id="christmas" class="w3-modal">
	<div class="w3-modal-content w3-card-4 w3-animate-zoom"
		style="max-width: 600px">
		<div class="w3-center">
			<br> <span
				onclick="document.getElementById('christmas').style.display='none'"
				class="w3-button w3-hover-red w3-display-topright"
				title="Close Modal">&times;</span> <img
				src="${images}/christmas.jpg" style="width: 97%; height: 200px">
		</div>
		<div class="w3-container w3-border-top w3-padding-16">
			<table>
				<tr>
					<th>Holiday Type:</th>
					<td>Christmas</td>
				</tr>
				<tr>
					<th>Name:</th>
					<td>ABC Entertainment</td>
				</tr>
				<tr>
					<th>Location:</th>
					<td>Abc xyz</td>
				</tr>
				<tr>
					<th>Contact:</th>
					<td>+977 1234567890</td>
				</tr>
			</table>

		</div>

	</div>
</div>
<div id="autumn" class="w3-modal">
	<div class="w3-modal-content w3-card-4 w3-animate-zoom"
		style="max-width: 600px">
		<div class="w3-center">
			<br> <span
				onclick="document.getElementById('autumn').style.display='none'"
				class="w3-button w3-hover-red w3-display-topright"
				title="Close Modal">&times;</span> <img src="${images}/autumn.jpg"
				style="width: 97%; height: 200px">
		</div>
		<div class="w3-container w3-border-top w3-padding-16 ">
			<table>
				<tr>
					<th>Holiday Type:</th>
					<td>Autumn</td>
				</tr>
				<tr>
					<th>Name:</th>
					<td>ABC Entertainment</td>
				</tr>
				<tr>
					<th>Location:</th>
					<td>Abc xyz</td>
				</tr>
				<tr>
					<th>Contact:</th>
					<td>+977 1234567890</td>
				</tr>
			</table>

		</div>

	</div>
</div>
<div id="winter" class="w3-modal">
	<div class="w3-modal-content w3-card-4 w3-animate-zoom"
		style="max-width: 600px">
		<div class="w3-center">
			<br> <span
				onclick="document.getElementById('winter').style.display='none'"
				class="w3-button w3-hover-red w3-display-topright"
				title="Close Modal">&times;</span> <img src="${images}/winter.png"
				style="width: 97%; height: 200px">
		</div>
		<div class="w3-container w3-border-top w3-padding-16 ">
			<table>
				<tr>
					<th>Holiday Type:</th>
					<td>Winter</td>
				</tr>
				<tr>
					<th>Name:</th>
					<td>ABC Entertainment</td>
				</tr>
				<tr>
					<th>Location:</th>
					<td>Abc xyz</td>
				</tr>
				<tr>
					<th>Contact:</th>
					<td>+977 1234567890</td>
				</tr>
			</table>

		</div>

	</div>
</div>