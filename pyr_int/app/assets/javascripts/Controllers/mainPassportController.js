var mainPassportCtrl = function($scope, $http, $location){
	$scope.load = $http.get('/passports.json').success(function(data){
		$scope.passports = data;
	});
	$scope.runTask = function(passport, sshConnection){
		if(sshConnection.$valid){
			var req = {
					method: 'POST',
					url: '/epk',
					headers: {
					   'Content-Type': "application/json"
					 	},
					data: { id: passport.id, sshIp: passport.sshIp, sshLogin: passport.sshLogin, sshPass: passport.sshPass}
				};
		}
		$http(req)
			.success(function(data){
				passport.response = data;
				console.log(data);
			})
			.error(function(data){
				console.log(data);
			});
	};
};

