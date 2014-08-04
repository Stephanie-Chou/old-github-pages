	<script type="text/javascript">
		$("#menu").click (function(){
			$(".navSec").toggle("slow");


			var toggleWidth = ($(".mainSec").width()/ $('.mainSec').parent().width() * 100);
			// alert(Math.round(toggleWidth));
			toggleWidth = Math.round(toggleWidth) == 75 ? "100%" : "75%";
			$('.mainSec').animate({ width: toggleWidth });
		});

	</script>