define(['angular'], function(angular) {
	
	var ctrl = ['$scope','$resource', function($scope, $resource){
		var params = $scope.params = {},
			Search = $resource('/tour-guide/search', {}, {'update': { method:'PUT' }});
		
		$scope.search = function(){
			
			Search.get(params, function(resp){
				
				var data = resp.object;
				var flag = resp.flag;
				
				if(flag){
					$scope.resultList = data;
				}
				
			});
			
		}
	}];
	
	return ctrl;
	
});