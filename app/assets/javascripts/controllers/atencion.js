angular.module('EpsMAJJ') .controller('AtencionController', ['$scope', '$http', '$filter', '$window', '$location', function ($scope, $http, $filter, $window, $location) {
	$scope.citas = {};
	$scope.registros = {};
	$scope.show_image_not_found = false;
	$scope.empty_register = false;
	$scope.message_found = "";

	$http.get("/verificar_citas/get_registros_atencion")
		.success(function(data) {
			$scope.registros = data["registros"];
			if ($scope.registros == undefined) {
				$scope.message_found = data["error"];
				$scope.empty_register = true;
			}else{
				$scope.empty_register = false;
			};
	  }).error(function(){ });

	$scope.atenderCita = function(registro_id){
		$http.get("/verificar_citas/atender_cita?id="+registro_id)
			.success(function(data) {
				if (data["error"] == undefined) {
					alert("Se ha finalizado la cita");
				}else{
					alert(data["error"]);
				};
				$window.location.reload();
		  }).error(function(){ });
	};
}]);