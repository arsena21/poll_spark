$(document).ready(function() {

	$(window).load(function() {
	var currentWidth = $(window).width();
	
		if(currentWidth <577) {
			col = 1;
			conWidth = 290 
		} else if(currentWidth < 668) {
			conWidth = 320;
			col = 1
		} else if(currentWidth < 698) {
			conWidth = 340;
			col = 1
		} else if(currentWidth < 728) {
			conWidth = 360;
			col = 2
		} else if(currentWidth < 758) {
			conWidth = 380;
			col = 2
		} else if(currentWidth < 788) {
			conWidth = 400;
			col = 2
		} else if(currentWidth < 808) {
			conWidth = 420;
			col = 2
		} else if(currentWidth < 838) {
			conWidth = 440;
			col = 2
		} else if(currentWidth < 868) {
			conWidth = 460;
			col = 2
		} else if(currentWidth < 898) {
			conWidth = 480;
			col = 2
		} else if(currentWidth < 928) {
			conWidth = 500;
			col = 2
		} else if(currentWidth < 958) {
			conWidth = 520;
			col = 2
		} else if(currentWidth < 1018) {
			conWidth = 540;
			col = 3
		} else if(currentWidth < 1048) {
			conWidth = 560;
			col = 3
		} else if(currentWidth < 1078) {
			conWidth = 580;
			col = 3
		} else if(currentWidth < 1108) {
			conWidth = 600;
			col = 3
		} else if(currentWidth < 1138) {
			conWidth = 620;
			col = 3
		} else if(currentWidth < 1168) {
			conWidth = 640;
			col = 3
		} else if(currentWidth < 1198) {
			conWidth = 660;
			col = 4;
		} else if(currentWidth < 1218) {
			conWidth = 680;
			col = 4;
		} else if(currentWidth < 1248) {
			conWidth = 700;
			col = 4;
		} else if(currentWidth < 1278) {
			conWidth = 720;
			col = 4;
		} else if(currentWidth < 1308) {
			conWidth = 740;
			col = 4;
		} else if(currentWidth < 1338) {
			conWidth = 760;
			col = 4;
		} else if(currentWidth < 1368) {
			conWidth = 780;
			col = 4;
		} else if(currentWidth < 1398) {
			conWidth = 800;
			col = 4;
		} else {
			conWidth = 823;
			col = 4;
		}
	

			$('#container').width(conWidth);
			$('#container').BlocksIt({
				numOfCol: col,
				offsetX: 8,
				offsetY: 8
			});
			
			$('#container2').width(conWidth);
			$('#container2').BlocksIt({
				numOfCol: col,
				offsetX: 8,
				offsetY: 8
			});
			
			$('#container3').width(conWidth);
			$('#container3').BlocksIt({
				numOfCol: col,
				offsetX: 8,
				offsetY: 8
			});		
			$('#container4').width(conWidth);
			$('#container4').BlocksIt({
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
		} else if(winWidth < 668) {
			conWidth = 320;
			col = 1
		} else if(winWidth < 698) {
			conWidth = 340;
			col = 1
		} else if(winWidth < 728) {
			conWidth = 360;
			col = 2
		} else if(winWidth < 758) {
			conWidth = 380;
			col = 2
		} else if(winWidth < 788) {
			conWidth = 400;
			col = 2
		} else if(winWidth < 808) {
			conWidth = 420;
			col = 2
		} else if(winWidth < 838) {
			conWidth = 440;
			col = 2
		} else if(winWidth < 868) {
			conWidth = 460;
			col = 2
		} else if(winWidth < 898) {
			conWidth = 480;
			col = 2
		} else if(winWidth < 928) {
			conWidth = 500;
			col = 2
		} else if(winWidth < 958) {
			conWidth = 520;
			col = 2
		} else if(winWidth < 1018) {
			conWidth = 540;
			col = 3
		} else if(winWidth < 1048) {
			conWidth = 560;
			col = 3
		} else if(winWidth < 1078) {
			conWidth = 580;
			col = 3
		} else if(winWidth < 1108) {
			conWidth = 600;
			col = 3
		} else if(winWidth < 1138) {
			conWidth = 620;
			col = 3
		} else if(winWidth < 1168) {
			conWidth = 640;
			col = 3
		} else if(winWidth < 1198) {
			conWidth = 660;
			col = 4;
		} else if(winWidth < 1218) {
			conWidth = 680;
			col = 4;
		} else if(winWidth < 1248) {
			conWidth = 700;
			col = 4;
		} else if(winWidth < 1278) {
			conWidth = 720;
			col = 4;
		} else if(winWidth < 1308) {
			conWidth = 740;
			col = 4;
		} else if(winWidth < 1338) {
			conWidth = 760;
			col = 4;
		} else if(winWidth < 1368) {
			conWidth = 780;
			col = 4;
		} else if(winWidth < 1398) {
			conWidth = 800;
			col = 4;
		} else {
			conWidth = 823;
			col = 4;
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
		if(conWidth != currentWidth) {
			currentWidth = conWidth;
			$('#container2').width(conWidth);
			$('#container2').BlocksIt({
				numOfCol: col,
				offsetX: 8,
				offsetY: 8
			});
		}
		if(conWidth != currentWidth) {
			currentWidth = conWidth;
			$('#container3').width(conWidth);
			$('#container3').BlocksIt({
				numOfCol: col,
				offsetX: 8,
				offsetY: 8
			});
		}
		if(conWidth != currentWidth) {
			currentWidth = conWidth;
			$('#container4').width(conWidth);
			$('#container4').BlocksIt({
				numOfCol: col,
				offsetX: 8,
				offsetY: 8
			});
		}
		});
	

});