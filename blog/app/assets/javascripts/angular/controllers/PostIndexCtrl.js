blogApp.factory('Post', ['$resource', function($resource){
    return $resource('/posts.json',{},{
      query: {method: 'GET'}
    });
}]);


@blogApp.factory 'postService',['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.query =
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
