angular.module('EpsMAJJ') .controller('UserController', ['$scope', '$http', '$filter', '$window', function ($scope, $http, $filter, $window) {
	$scope.show_error = false;

	$scope.createUser = function(first_name,last_name,username,role){
		if (first_name.length>0 && last_name.length>0 && username.length>0 && role.length>0 && role == 'Admin' || role == 'Doctor' || role == 'Asistencia') {
			$http.get('/dashboard/add_fields_user?first_name='+first_name+'&last_name='+last_name+'&username='+username+'&role='+role)
				.success(function(data) {
			    $window.location.reload();
			  }).error(function(){
			  });
		}else{
			$scope.role = "";
			$scope.show_error = true;
			$scope.message_error = "Rol incorrecto: Solo puede usar (Admin, Doctor y Asistencia)"
		};
	};

}]);