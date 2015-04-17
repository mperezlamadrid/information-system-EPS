angular.module('EpsMAJJ') .controller('UserController', ['$scope', '$http', '$filter', '$window', '$location', function ($scope, $http, $filter, $window, $location) {
	$scope.show_error = false;
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

	$scope.useradmin = function(email_admin,password_admin){
		if (password_admin == "@dm1nmajj") {
			$http.get('/usuario-admin?email_admin='+email_admin)
				.success(function(data) {
			    if (data.can_create) {
			    	window.location.replace("users/sign_up");
			    }else{
			    	$scope.email_admin = "";
			    	$scope.show_error = true;
			    	$scope.message_error = "El Usuario no es administrador, asegurese de escribir bien su email e intente de nuevo.";
			    };
			  }).error(function(){
			  });
		}else{
			$scope.password_admin = "";
			$scope.show_error = true;
			$scope.message_error = "Contraseña Incorrecta";
		}
	};

}]);