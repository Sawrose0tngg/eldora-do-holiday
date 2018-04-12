<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-black.css">
<!-- Contact Container -->
<br>
<div class="w3-container w3-padding-64 w3-theme-l5" id="contact">
	<div class="w3-row">
		<div class="w3-col m5 w3-padding-16" style="padding-left: 40px">
			<div class="w3-padding-16">
				<span class="w3-xlarge w3-border-teal w3-bottombar">Contact
					Us</span><br>
			</div>
			<h6>Contact us and we'll get back to you within 24 hours.</h6>
			<p>
				<i class="fa fa-map-marker w3-text-teal fa-2x"></i>  Big Ben,
				London
			</p>
			<p>
				<i class="fa fa-phone w3-text-teal fa-2x"></i>  +44 7939568164
			</p>
			<p>
				<i class="fa fa-envelope-o w3-text-teal fa-2x"></i>  eldoradoholidays@org.com
			</p>
		</div>
		<div class="w3-col m7" style="padding-right: 20px;">
			<form class="w3-container w3-card-4 w3-padding-16 w3-white"
				action="/action_page.php" target="_blank">
				<div class="w3-section">
					<label>Name</label> <input class="w3-input" type="text" name="Name"
						required>
				</div>
				<div class="w3-section">
					<label>Email</label> <input class="w3-input" type="text"
						name="Email" required>
				</div>
				<div class="w3-section">
					<label>Message</label>
					<textarea class="w3-input w3-border" style="resize: none"></textarea>

				</div>
				<button type="submit" class="w3-button w3-right w3-theme">
					<i class="fa fa-location-arrow fa-1x"></i> Send
				</button>
			</form>
		</div>
	</div>
</div>

<!-- Google Maps -->
<h3 class="text-center">Our Location</h3>
<div id="googleMap" style="width: 100%; height: 420px;"></div>
<br>
<script>
function myMap() {
	var myCenter = new google.maps.LatLng(51.5007292, -0.1268141);
	var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
	var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
	var marker = new google.maps.Marker({position:myCenter});
	marker.setMap(map);
	}
</script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB3TKnKRC_WB9GwNAcg66tsqvRCkNcEqj4&callback=myMap"
	async defer></script>