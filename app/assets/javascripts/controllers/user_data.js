angular.module('EpsMAJJ') .controller('UserController', ['$scope', '$http', '$filter', '$window', '$location', function ($scope, $http, $filter, $window, $location) {
	$scope.show_error = false;
	$scope.showFieldsMedico = false;
	$scope.showPassAdmin = false;
	$scope.roles = [{id: 1, name: 'Administracion'},{id: 2, name: 'Medico'},{id: 3,name: 'Enfermeria'},{id: 2, name: 'SIAU'}];

	$http.get('/specialities').success(function(data) {
    $scope.specialities = data["specialities"];
    $scope.defaultSpeciality = $scope.specialities[0];
  }).error(function(){ });

	$scope.checkRole = function(role){
		if (role.name == "Medico") {
			$scope.showFieldsMedico = true;
			$scope.showPassAdmin = false;
		}else{
			$scope.showPassAdmin = false;
			$scope.showFieldsMedico = false;
		};
		if (role.name == "Administracion") {
			$scope.showPassAdmin = true;
			$scope.showFieldsMedico = false;
		};
	};

	$scope.createUser = function(first_name,last_name,username,role,passAdmin,proCard,defaultSpeciality){
		if (role == undefined) {
			var role = {name: "Administracion"}
		}

		if (first_name.length>0 && last_name.length>0 && username.length>0) {
			$http.get('/dashboard/add_fields_user?first_name='+first_name+'&last_name='+last_name+'&username='+username+'&role='+role.name+'&pass_admin='+passAdmin+'&pro_card='+proCard+'&speciality='+defaultSpeciality.name)
				.success(function(data) {
			    $window.location.reload();
			  }).error(function(){
			  });
		};
	};

	$scope.useradmin = function(email_admin,password_admin){
		$http.get('/usuario-admin?email_admin='+email_admin+'&pass='+password_admin)
			.success(function(data) {
		    if (data.can_create) {
		    	window.location.replace("users/sign_up");
		    }else{
		    	$scope.email_admin = "";
		    	$scope.password_admin = "";
		    	$scope.show_error = true;
		    	$scope.message_error = "El Usuario no es administrador o la contraseña es incorrecta, asegurese de escribir bien su email o controsaña e intente de nuevo.";
		    };
		  }).error(function(){
		  });
	};

	$scope.checkRole($scope.roles[0])

}]);