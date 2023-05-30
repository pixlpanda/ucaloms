$('.forgotPassword').on('click', function(e){
    e.preventDefault();

    $('.gdpr-preferences-popup').toggleClass('show');
});


			// Close Popup Button
			$('.gdpr-close-popup').on('click', function(e){
				e.preventDefault();

				$('.gdpr-preferences-popup').removeClass('show');
			});