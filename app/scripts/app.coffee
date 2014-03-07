'use strict'

angular.module('projectableApp', [
    'ngCookies'
    'ngResource'
    'ngSanitize'
    'ngRoute'
    'localStorageModule'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'ProjectCtrl'
      .otherwise
        redirectTo: '/'
