define(['angular'], function(angular) {
	
	var ctrl = ['$scope','$resource', function($scope, $resource){
		var q = $scope.q = '',
			Search = $resource('/tour-guide/search', {}, {'update': { method:'PUT' }});
		
		
		$scope.search = function(){
			
			alert('search');
			
			/*
			Search.query(q, function(){
				
			})*/
		}
	}];
	
	return ctrl;
	
});