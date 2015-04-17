angular.module('EpsMAJJ') .controller('UserController', ['$scope', '$http', '$filter', '$window', function ($scope, $http, $filter, $window) {
	$scope.roles = [{id: 1, name: 'Administracion'},{id: 2, name: 'Medico General'},{id: 2, name: 'Medico Especialista'},{id: 3,name: 'Enfermeria'},{id: 2, name: 'SIAU'}];

	$scope.createUser = function(first_name,last_name,username,role){
		if (role == undefined) {
			var role = {name: "Administracion"}
		}

		if (first_name.length>0 && last_name.length>0 && username.length>0) {
			$http.get('/dashboard/add_fields_user?first_name='+first_name+'&last_name='+last_name+'&username='+username+'&role='+role.name)
				.success(function(data) {
			    $window.location.reload();
			  }).error(function(){
			  });
		};
	};

}]);