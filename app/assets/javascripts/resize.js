$(document).ready(function() {



$(window).load(function() {
	first = $('#sizer').height();
	var footer = $('.footer').height();
	var initHeight = $(window).height();
	var size = initHeight-footer-first;
	
	$('#push').height(size);
	});
	
	
$(window).resize(function() {
	var finalHeight = $(window).height();
	var footer = $('footer').height();
	
	var size = finalHeight - footer - first;
	
	$('#push').height(size);
		
	});	

});