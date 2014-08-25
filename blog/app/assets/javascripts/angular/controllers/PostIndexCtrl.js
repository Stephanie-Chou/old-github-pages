blogApp.controller ('PostIndexCtrl', ['$scope', function($scope){

}]);

@blogApp.factory 'postService',['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.query = $http.get('./posts.json').success((data) ->
    console.log("in query")
  )
]


@blogApp.controller 'PostIndexCtrl', ['$scope', 'postService', ($scope, postService) ->
  $scope.posts = postService.query();
]

@blogApp.controller 'PostDetailCtrl', ['$scope', '$routeParams', ($scope, $routeParams) ->
      $scope.post = {
        id: $routeParams.id
        title: $routeParams.title
        date: $routeParams.date
        text: $routeParams.text
      }
]
