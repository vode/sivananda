$(function(){
	//navigation
	$('#nav-sub-bg ul.active').show();
	
	$('#nav-group li').each(function(){
		var nav = $(this).children('a:first');
		var subnav_id = nav.attr('id').replace('nav','sub-nav');
		var subnav = $('#'+subnav_id);
	
		
		nav.hover(function(){
			$('.sub-nav').hide();
			if(subnav.length){
				subnav.show();	
			}
			else{
				$('#nav-sub-bg ul.active').show();
			}
		});
		
	
	});
	

});
