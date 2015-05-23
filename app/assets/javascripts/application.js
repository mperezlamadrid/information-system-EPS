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
			$("#user_pass_admin").parent(".form-group").addClass("show_pass_admin");
			$("#user_specialty").parent(".form-group").removeClass("show_field_medico");
			$("#user_pro_card").parent(".form-group").removeClass("show_field_medico");
		};

		if ($("#user_role").val() == "2") {
			$("#user_pass_admin").parent(".form-group").removeClass("show_pass_admin");
			$("#user_specialty").parent(".form-group").addClass("show_field_medico");
			$("#user_pro_card").parent(".form-group").addClass("show_field_medico");
		};
	};

	var checkFieldsPatiente = function(){
		if ($("#paciente_regimen").val() == "1") {
			$("#paciente_num_ficha_sisben").parent(".form-group").removeClass("hide-fields");
		};

		if ($("#paciente_regimen").val() == "2") {
			$("#paciente_num_ficha_sisben").parent(".form-group").addClass("hide-fields");
		};
	};

	var checkFieldsPregunta = function(){
		if ($("#preguntum_tipo").val() == "Cerrada") {
			$("#preguntum_respuestas_cerrada").parent(".form-group").removeClass("hide-fields");
		};

		if ($("#preguntum_tipo").val() == "No Cerrada") {
			$("#preguntum_respuestas_cerrada").parent(".form-group").addClass("hide-fields");
		};
	};

	checkFieldsUser();
	checkFieldsPatiente();
	checkFieldsPregunta();

	$('#user_role').on('change', function() {
	  checkFieldsUser();
	});

	$('#paciente_regimen').on('change', function() {
	  checkFieldsPatiente();
	});

	$('#preguntum_tipo').on('change', function() {
	  checkFieldsPregunta();
	});

});