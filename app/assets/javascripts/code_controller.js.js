// Generated by CoffeeScript 1.8.0
var CodeControllers, CodesCtrl;

CodeControllers = angular.module("CodeControllers", ["ngResource", "ui.bootstrap"]);

CodesCtrl = (function() {
  function CodesCtrl(scope, http, resource, Code, sce) {
    this.scope = scope;
    this.http = http;
    this.resource = resource;
    this.Code = Code;
    this.sce = sce;
    this.Code = this.resource("/codes/:id.json");
    this.Code.query((function(_this) {
      return function(data) {
        _this.data = data;
        _this.correct = data[0].correctCode;
        _this.wrong = data[0].wrongCode;
        console.log("DATA:", _this.data[0].level);
        _this.question = data[0].question;
        _this.hint = data[0].hint;
        _this.level = data[0].level;
        _this.correctCode = _this.sce.trustAsHtml(_this.correct);
        return _this.wrongCode = _this.sce.trustAsHtml(_this.wrong);
      };
    })(this));
    this.totalItems = 100;
    this.totalPages = 10;
    this.progressBar = 10;
    this.currentPage = 1;
    this.successAlert = true;
    this.dangerAlert = true;
  }

  CodesCtrl.prototype.pageChanged = function() {
    console.log("Page changed to: ", this.currentPage);
    this.beginnerCounter = this.currentPage - 1;
    this.progressBar = this.currentPage * 10;
    this.question = this.data[this.beginnerCounter].question;
    this.level = this.data[this.beginnerCounter].level;
    this.hint = this.data[this.beginnerCounter].hint;
    this.correct = this.data[this.beginnerCounter].correctCode;
    this.wrong = this.data[this.beginnerCounter].wrongCode;
    this.correctCode = this.sce.trustAsHtml(this.correct);
    return this.wrongCode = this.sce.trustAsHtml(this.wrong);
  };

  CodesCtrl.prototype.correctCodeClick = function() {
    console.log("correctCode!");
    this.successAlert = false;
    return this.dangerAlert = true;
  };

  CodesCtrl.prototype.wrongCodeClick = function() {
    console.log("wrongCode!");
    this.dangerAlert = false;
    return this.successAlert = true;
  };

  return CodesCtrl;

})();

CodeControllers.controller("CodesCtrl", ["$scope", "$http", "$resource", "Code", "$sce", CodesCtrl]);
