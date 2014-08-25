blogApp.controller('PostIndexCtrl', ['$scope', '$location', '$http', function($scope, $location ,$http){
    $scope.posts = [];
    $http({method:'GET', url: './posts.json'}).success(function(data){
      $scope.posts = data;
    })
  }
])