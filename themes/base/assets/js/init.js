jQuery(function( $ ){
    /* Smooth scrolling para anclas */  
	var image = $("#moreinfo");
	var url = "http://efonts.cat/themes/efonts/";
	
    $('a.smooth').live('click', function(e) { 
		if ($("main aside").hasClass('in')){
			image.attr("src", url+"assets/images/less-info.png");
		}else{
			image.attr("src", url+"assets/images/more-info.png");
		}
		
		e.preventDefault();
        var $link = $(this);  
        var anchor  = $link.attr('href');  
        $('html, body').stop().animate({  
            scrollTop: 485
        }, 400); 
    });

	
     $('.span4').hover(
         function () {
           $(this).children(".hover-text").css("display","block");
         }, 
         function () {
           $(this).children(".hover-text").css("display","none");
         }
     );
	 

});