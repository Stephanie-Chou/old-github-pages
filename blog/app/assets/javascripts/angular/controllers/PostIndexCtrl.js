blogApp.controller('PostIndexCtrl', ['$scope', '$location', '$http', '$routeParams', function($scope, $location ,$http, $routeParams){
    $scope.posts = []
    $scope.post_index = $routeParams.id -1
    $http({method:'GET', url: './posts.json'}).success(function(data){
      $scope.posts = data;
    })
  }
])