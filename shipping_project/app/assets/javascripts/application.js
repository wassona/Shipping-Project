// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){   
	// $(".edit_job").on("ajax:success", function(e,data,status,xhr){     
	// 	var boatList = $(e.currentTarget).parent();
	// 	boatList.append(xhr.responseText);
	// 	$(".remove-association", boatList.last()).on("ajax:complete", function(evt){    
	// 		$(evt.currentTarget).parent().hide();
	// 	}) 
	// }) 
 
	// $(".remove-association").on("ajax:complete", function(e){   
	// 	$(e.currentTarget).parent().hide();  
	// }) 
	$(document).on("ajax:success", function(event, data, status, xhr) {
		if(event.target.tagName === "A"){
			$(event.target).parent().hide();
		} else if (event.target.tagName === "FORM"){
			$(event.target).parent().append(xhr.responseText);
		}
	});
})


