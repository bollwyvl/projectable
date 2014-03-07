'use strict'

angular.module('projectableApp')
  .controller 'ProjectCtrl', ['$scope', '$storage',
    ($scope, $storage) ->
      site_vars = $storage 'site_vars'
      
      bind = (table, scope_name, table_name) ->
        $scope[scope_name] = table.getItem table_name || scope_name
        $scope.$watch scope_name, ((val) -> 
            if angular.isDefined val
              table.setItem table_name or scope_name, val
          ),
          true

      bind site_vars, 'projectName'
  ]