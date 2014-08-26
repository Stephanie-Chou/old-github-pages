blogApp.controller('PostIndexCtrl', ['$scope', '$location', '$http', '$routeParams', function($scope, $location ,$http, $routeParams){
    $scope.posts = []
    $scope.file;
    $scope.post_index = $routeParams.id -1
    $http({method:'GET', url: './posts.json'}).success(function(data){
    	console.log(data);
      $scope.posts = data.posts;
      $scope.file = data.file;
    })
  }
])