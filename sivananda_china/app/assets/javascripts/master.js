$(function(){
	//navigation
	$('#nav-sub-bg ul.active').show();
	
	var left_base = $('#nav-1').position().left;
	var left = [];
	
	for(var i=0; i<6; i++){
		left[i]=($('#nav-'+(i+1)).position().left - left_base) + $('#nav-'+(i+1)).width() / 2;
	}
	
	var num = parseInt($('#nav-sub-bg').attr('data-nav'))-1;
	
	var $active_arrow = $('<div class="arrow" id="active-arrow"></div>');
	$active_arrow.css('left',left[num]+"px");
	$('#nav-sub-bg').append($active_arrow);
	
	//var num = $('#nav-sub-bg').attr('data-nav');
	
	
	$('#nav-group li').each(function(){
		var nav = $(this).children('a:first');
		var subnav_id = nav.attr('id').replace('nav','sub-nav');
		var subnav = $('#'+subnav_id);
		
		var $arrow = $('<div class="arrow"></div>');
		var arrow_left = (nav.position().left - left_base) + nav.width() / 2;
		$arrow.css('left',arrow_left+"px");
		
		nav.hover(function(){
			$('#nav-sub-bg').append($arrow);
			$('.sub-nav').hide();
			if(subnav.length){
				subnav.show();	
			}
			else{
				$('#nav-sub-bg ul.active').show();
			}
		},function(){
			$arrow.remove();
		});
		
	
	});
	
	$('#home-media').carousel({
      interval: false
  });
});
