// Generated by CoffeeScript 1.8.0
var CodeRouter, Router;

Router = (function() {
  function Router(routeProvider, locationProvider) {
    this.routeProvider = routeProvider;
    this.locationProvider = locationProvider;
    this.routeProvider.when("/", {
      templateUrl: "/site_templates",
      controller: "SitesCtrl as sites"
    });
    this.routeProvider.when("/abouts", {
      templateUrl: "/about_templates",
      controller: "AboutsCtrl as abouts"
    });
    this.routeProvider.when("/signup", {
      templateUrl: "/user_templates",
      controller: "UsersCtrl as users"
    });
    this.routeProvider.when("/codes", {
      templateUrl: "/code_templates",
      controller: "CodesCtrl as codes"
    });
    this.routeProvider.when("/intermediates", {
      templateUrl: "/code_templates",
      controller: "IntermediatesCtrl as codes"
    });
    this.locationProvider.html5Mode(true);
  }

  return Router;

})();

CodeRouter = angular.module("CodeRouter", ["ngRoute"]);

CodeRouter.config(["$routeProvider", "$locationProvider", Router]);

CodeRouter.config([
  "$httpProvider", function($httpProvider) {
    return $httpProvider.defaults.headers.common["X-CSRF-Token"] = $('meta[name=csrf-token]').attr("content");
  }
]);
