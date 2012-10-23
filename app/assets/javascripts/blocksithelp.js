$(document).ready(function() {

	

	
	$(window).load(function() {
	var currentWidth = $(window).width();
	
		if(currentWidth <577) {
				col = 1;
				conWidth = 290		
		} else if(currentWidth <760) {
				col = 2;
				conWidth = 470
		} else if(currentWidth < 820) {
			col = 3
			conWidth = 620
		} else if(currentWidth < 1098) {
			col = 4;
			conWidth = 681
		} else {
			col = 5;
			conWidth = 898
		}
	

			$('#container').width(conWidth);
			$('#container').BlocksIt({
				numOfCol: col,
				offsetX: 8,
				offsetY: 8
			});
		
	
	});
	
	
	
	
	var currentWidth = 1395;
	$(window).resize(function() {
		var winWidth = $(window).width();
		var conWidth;
		if(winWidth <577) {
			col = 1;
			conWidth = 290 
		} else if(winWidth < 760) {
			conWidth = 470;
			col = 2
		} else if(winWidth < 820) {
			conWidth = 620;
			col = 3
		} else if(winWidth < 1098) {
			conWidth = 681;
			col = 4;
		} else {
			conWidth = 898;
			col = 5;
		}
		
		
	
		
		
		
		
		
		if(conWidth != currentWidth) {
			currentWidth = conWidth;
			$('#container').width(conWidth);
			$('#container').BlocksIt({
				numOfCol: col,
				offsetX: 8,
				offsetY: 8
			});
		}
	});
	

});