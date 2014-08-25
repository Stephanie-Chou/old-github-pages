

@blogApp.controller 'PostIndexCtrl', ['$scope', '$resource', ($scope, $resource) ->
  $scope.posts = []
  $resource.get('./posts.json').success((data) ->
    $scope.posts = data
    )
]

@blogApp.controller 'PostDetailCtrl', ['$scope', '$routeParams', ($scope, $routeParams) ->
      $scope.post = {
        id: $routeParams.id
        title: $routeParams.title
        date: $routeParams.date
        text: $routeParams.text
      }
]
