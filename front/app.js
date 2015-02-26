var passport = angular.module('passport', [])
	.controller('MainCtrl', [
'$scope',
function($scope){
  $scope.test = 'Hello world!';
}]);