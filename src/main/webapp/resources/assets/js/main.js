/*
 * Url preview script 
 * powered by jQuery (http://www.jquery.com)
 * 
 * written by Alen Grakalic (http://cssglobe.com)
 * 
 * for more info visit http://cssglobe.com/post/1695/easiest-tooltip-and-image-preview-using-jquery
 *
 */
 
this.screenshotPreview = function(){	
	/* CONFIG */
		
		xOffset = 190;
		yOffset = 30;
		
		// these 2 variable determine popup's distance from the cursor
		// you might want to adjust to get the right result
		
	/* END CONFIG */
	$("a.screenshot").hover(function(e){
		if((this.title).length > 70)
			this.t = (this.title).substr(0, 68) + "...";
		else
			this.t = this.title;
		this.title = "";
		var c = (this.t != "") ? "<span style='padding-left:4px;float:right;width:162px;'>" + this.t : "</span>";
		$("body").append("<p id='screenshot' style='background-color:#f0f0f0;" +
				"width:300px;height:200px;float:left;padding: 5px 5px;border-radius: 4px 4px 4px 4px;" +
				"box-shadow: 5px 5px 5px lightgray;float:left;" +
				"'><img src='"+ this.rel +"' alt='url preview' style='width:128px;height:190px;' />"+ c +"</p>");								 
		$("#screenshot")
			.css("top",(e.pageY - xOffset) + "px")
			.css("left",(e.pageX + yOffset) + "px")
			.fadeIn("fast");						
    },
	function(){
		this.title = this.t;	
		$("#screenshot").remove();
    });	
	$("a.screenshot").mousemove(function(e){
		$("#screenshot")
			.css("top",(e.pageY - xOffset) + "px")
			.css("left",(e.pageX + yOffset) + "px")
			.css("display", "block")
			.css("position", "absolute")
			.css("z-index", "2001");
			
	});			
};


// starting the script on page load
$(document).ready(function(){
	screenshotPreview();
});