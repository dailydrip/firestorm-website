jQuery(document).ready(function() {
	active_class();

	$('.link a').click(function (e) {
		e.preventDefault();
		$('.link .active').removeClass('active');
		$(this).addClass('active');
	});

});

var active_class = function() {
	var x = $('.link').length;
	var url = window.location.href;

	for(var i = 0; i < x; i++){
		var linkUrl = $('ul:nth-child(2) a')[i].href;
		if (linkUrl == url) {
			var current = $('ul:nth-child(2) a')[i];
			$(current).addClass('active');
		}
	}

}