angular.module('EpsMAJJ') .controller('UserController', ['$scope', '$http', '$filter', '$window', function ($scope, $http, $filter, $window) {

	$scope.createUser = function(first_name,last_name,username,role){
		$http.get('/dashboard/add_fields_user?first_name='+first_name+'&last_name='+last_name+'&username='+username+'&role='+role)
			.success(function(data) {
		    $window.location.reload();
		  }).error(function(){
		  });
	};

}]);