blogApp.controller('PostIndexCtrl', ['$scope', '$location', '$http', '$routeParams', function($scope, $location ,$http, $routeParams){
    $scope.posts = [];
    console.log("index ctrl")
    $scope.file;
    $scope.post_index = $routeParams.id -1;
    $http({method:'GET', url: './posts.json'}).success(function(data){
      $scope.posts = data;
    });
  }
])

blogApp.controller('PostDetailCtrl',['$scope', '$location', '$http','$routeParams', function($scope, $location, $http, $routeParams){
	$scope.file;
	console.log("detail ctrl");
	$http({method:'GET', url: './posts/'+($routeParams.id).toString()+'.json'}).success(function(data){
      $scope.file= data;
    });
}]);