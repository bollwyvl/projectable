'use strict'

angular.module('projectableApp')
  .controller 'ProjectCtrl', [
    '$scope'
    'storage'
    ($scope, storage) ->
      storage.bind $scope, 'projectName',
        defaultValue: 'An Awesome Project'
  ]