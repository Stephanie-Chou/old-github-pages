$(document).ready(function() {
    $('.hover').bind('touchstart touchend', function(e) {
        e.preventDefault();
        $(this).toggleClass('hover_effect');
    });
   
    $("#rectangle").on("click", function(){
    	$(this).css("background-color" :"#000");
   		$(this).slideDown();
   	});

   	$( "#box" ).on( "click", function() {
  		$( this ).css( "width", "+=200" );
	});
});
