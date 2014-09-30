$(function(){
	$('.clickable').click(function(){

		window.location = $(this).find('a').attr('href');

	}).hover(function(){

		$(this).toggleClass('hover');

	});

	$('.datepicker').datepicker({
			format: 'yyyy/mm/dd',
			startDate: '-3d'
	});

});

