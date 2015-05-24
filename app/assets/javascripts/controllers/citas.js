angular.module('EpsMAJJ') .controller('CitasController', ['$scope', '$http', '$filter', '$window', '$location', function ($scope, $http, $filter, $window, $location) {
	$scope.citas = {};
	$scope.registros = {};
	$scope.show_image_not_found = false;
	$scope.empty_register = false;
	$scope.message_found = "";

	$http.get("/verificar_citas/get_registros")
		.success(function(data) {
			$scope.registros = data["registros"];
			if ($scope.registros == undefined) {
				$scope.message_found = data["error"];
				$scope.empty_register = true;
			}else{
				$scope.empty_register = false;
			};
	  }).error(function(){ });

	$scope.getCitas = function(documento){
		$http.get("/verificar_citas/get_citas?doc_paciente="+documento)
			.success(function(data) {
				if (data["citas"] == undefined) {
					$scope.show_image_not_found = true;
					$scope.message_found = data["error"]
					$scope.citas = {};
				}else{
					$scope.show_image_not_found = false;
					$scope.citas = data["citas"];
				};
		  }).error(function(){ });
	};

	$scope.bajarCita = function(cita_id){
		$http.get("/verificar_citas/bajar_cita?id="+cita_id)
			.success(function(data) {
				if (data["error"] == undefined) {
					alert("Se ha dado de baja la cita");
				}else{
					alert(data["error"]);
				};
		  }).error(function(){ });
	};

	$scope.eliminarRegistro = function(registro_id){
		var r = confirm("Estas Seguro que quieres elimiar este registro?");

		if (r == true) {
			$http.get("/verificar_citas/eliminar_registro?id="+registro_id)
				.success(function(data) {
					$window.location.reload();
			  }).error(function(){ });
		};
	};
}]);