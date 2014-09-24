main = angular.module("CodesApp", [
	"CodeRouter",
	"CodeControllers",
	"SiteControllers",
	"UserControllers",
	"AboutControllers",
	"IntermediateControllers",
	"SessionController",
	"CodeFactories",
	"ui.bootstrap",
	"hljs"
])

main.controller "MainCtrl", ["$scope", "$http", "$rootScope", ($scope, $http, $rootScope)->

	if !$scope.current_user 
		console.log("Checking for current user")
		$http.get("/logged_in_user.json")
		.success (user)=>
			console.log "Welcome, ", user
			$rootScope.current_user = user


	$rootScope.sign_out = () =>
		$http.delete("/logout.json")
		.success (data) =>
			$set_user null
			$location.path("/login")


]