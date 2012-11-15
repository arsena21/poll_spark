$(document).ready(function() {



$(window).load(function() {
	first = $('#white').height();
	var footer = $('.footer').height();
	var initHeight = $(window).height();
	var size = initHeight-footer-first+5;
	
	$('#push').height(size);
	});
	
	
$(window).resize(function() {
	var finalHeight = $(window).height();
	var footer = $('footer').height();
	
	var size = finalHeight - footer - first+5;
	
	$('#push').height(size);
		
	});	

});