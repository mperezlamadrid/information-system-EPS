angular.module('EpsMAJJ') .controller('EditUserController', ['$scope', '$http', '$filter', '$window', '$location', function ($scope, $http, $filter, $window, $location) {
	$scope.show_error = false;
	$scope.showFieldsMedico = false;
	$scope.showPassAdmin = false;

	$http.get('/show_specialities').success(function(data) {
    $scope.specialities = data["specialities"];
    $scope.defaultSpeciality = $scope.specialities[0];
  }).error(function(){ });

  $http.get('/editar_perfil/show_user_data').success(function(data) {
    var userData = data["user"]
    var role = {name: userData.role}

    $scope.email = userData.email;
		$scope.first_name = userData.first_name;
		$scope.last_name = userData.last_name;
		$scope.username = userData.username;
		$scope.role = userData.role;
		$scope.checkRole(role);

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

	$scope.createUser = function(email,first_name,last_name,username,role,password,passwordConfirmation,passAdmin,defaultSpeciality,proCard){
		if (role == undefined) {
			var role = {name: "Administracion"}
		}

		if (email.length>0 && first_name.length>0 && last_name.length>0 && username.length>0 && password.length>0 && passwordConfirmation.length>0) {
			$http.get('/editar_perfil/editar_perfil?email='+email+'&first_name='+first_name+'&last_name='+last_name+'&username='+username+'&role='+$scope.role+'&password='+password+'&password_confirmation='+passwordConfirmation+'&pass_admin='+passAdmin+'&pro_card='+proCard+'&speciality='+defaultSpeciality.name)
				.success(function(data) {
					if (data["estado"] == "ok") {
						$window.location.replace("/users/sign_in");
					}else{
						$scope.show_error = true;
						$scope.message_error = data["estado"];
					};
			  }).error(function(){
			  });
		};
	};

}]);