angular.module('EpsMAJJ') .controller('HistorialController', ['$scope', '$http', '$filter', '$window', '$location', function ($scope, $http, $filter, $window, $location) {
	$scope.pacientes = {};
	$scope.formatos = {};
	$scope.showFormatHc = false;

	$http.get("/admin_historial/get_pacientes")
		.success(function(data) {
			$scope.pacientes = data["pacientes"];
			$scope.defaultPaciente = $scope.pacientes[0];
	  }).error(function(){ });

	$http.get("/admin_historial/get_formatos_hc")
		.success(function(data) {
			$scope.formatos = data["formatos"];
			$scope.defaultFormato = $scope.formatos[0];
	  }).error(function(){ });

	$scope.showFormat = function(){
		$scope.showFormatHc = true;
		$scope.selectFormat($scope.defaultFormato);
	};

	$scope.hideFormat = function(){
		$scope.showFormatHc = false;
	};

	$scope.selectFormat = function(format){
		$http.get("/admin_historial/get_formatos_preguntas_cerrada?name_format="+format.nombre)
			.success(function(data) {
				$scope.preguntas_cerradas = data["preguntas_cerradas"];

				$scope.cerradas = [];
				angular.forEach($scope.preguntas_cerradas, function(data) {
				  var pregunta = data["pregunta"].pregunta;
				  $scope.opciones = [];

				  angular.forEach(data["opciones"], function(data) {
				  	$scope.opciones.push(data.opcion);
					});

					var pregunta_completa = {pregunta: pregunta, opciones: $scope.opciones}
					$scope.cerradas.push(pregunta_completa)
				});
		  }).error(function(){ });

	  $http.get("/admin_historial/get_formatos_preguntas_abierta?name_format="+format.nombre)
			.success(function(data) {
				$scope.preguntas_abiertas = data["preguntas_abierta"];
		  }).error(function(){ });
	};

}]);