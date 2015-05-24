angular.module('EpsMAJJ') .controller('CitasController', ['$scope', '$http', '$filter', '$window', '$location', function ($scope, $http, $filter, $window, $location) {
	$scope.citas = {};
	$scope.show_image_not_found = false;
	$scope.message_found = "";

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
		  }).error(function(){ });
	};
}]);