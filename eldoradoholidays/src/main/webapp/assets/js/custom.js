$(function() {
	switch (menu) {

	case 'Home':
		// $('#home').addClass('active');Active by Class.
		$('#home a').css('color', '#fff');
		break;
	case 'About':
		$('#about a').css('color', '#fff');
		break;
	case 'Contact':
		$('#contact a').css('color', '#fff');
		break;
	}

	/* Dismissing the alert after 3 seconds */
	var $alert = $('.alert');
	if ($alert.length) {
		setTimeout(function() {
			$alert.fadeOut('slow');
		}, 3000);
	}
});