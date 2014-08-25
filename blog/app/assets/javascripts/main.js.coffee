@blogApp = angular.module('blogApp', [])

@blogApp.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/posts',{
      templateUrl: '../templates/posts/index.html',
      controller: 'PostIndexCtrl'
    }).
    when('/posts/:id',{
      templateUrl: '../templates/posts/_.post_detail.html',
      controller: 'PostIndexCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
])

