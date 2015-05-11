// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require turbolinks
//= require bootstrap-sprockets
//= require angular
//= require_tree .
$(function(){
	var checkFieldsUser = function(){
		if ($("#user_role").val() == "1") {
			console.log("show pass")
			$("#user_pass_admin").parent(".form-group").addClass("show_pass_admin");
			$("#user_specialty").parent(".form-group").removeClass("show_field_medico");
			$("#user_pro_card").parent(".form-group").removeClass("show_field_medico");
		};

		if ($("#user_role").val() == "2") {
			console.log("show number")
			$("#user_pass_admin").parent(".form-group").removeClass("show_pass_admin");
			$("#user_specialty").parent(".form-group").addClass("show_field_medico");
			$("#user_pro_card").parent(".form-group").addClass("show_field_medico");
		};
	};

	checkFieldsUser();

	$('#user_role').on('change', function() {
	  checkFieldsUser();
	});

});