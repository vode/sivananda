$(function(){
	//navigation
	
	$('#nav-group li').each(function(){
		var _nav = $(this).children('a:first');
		var _subnav_id = _nav.attr('id').replace('nav','sub-nav');
		var _subnav = $('#'+_subnav_id);
		
		_nav.hover(function(){
			$('.sub-nav').hide();
			if(_subnav.length){
				_subnav.show();	
			}

		});
		
	
	});
	

});
