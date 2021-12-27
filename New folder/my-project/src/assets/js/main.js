
$( document ).ready(function() {
	$('#parent').hover(function() {
		$('#submenu').stop(true, true).slideDown(1000);
	}, function() {
		$('#submenu').stop(false, false).slideUp(1000000);

	});
	

	$('.customer-logos').slick({
		slidesToShow: 4,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 2000,
		arrows: false,
		dots: false,
			pauseOnHover: true,
			responsive: [{
			breakpoint: 768,
			settings: {
				slidesToShow: 3
			}
		}, {
			breakpoint: 520,
			settings: {
				slidesToShow: 2
			}
		}]
	});
	// $("#s").click(function(){
	// 	Swal.fire({
	// 		position: 'center',
	// 		title: 'Message Submit Successfully! Our Concern Person Send you the Consultant Schedule by reply email',
	// 		showConfirmButton: false,
	// 		timer: 2000
	// 	  })
	//   });
});













// -----------
