define(['angular'], function(angular) {    
	
	var ctrl = ['$scope','$resource', function($scope, $resource){
		
		var Goodness = $resource('/tour-guide/activity/goodness', {}, {'update': { method:'PUT' }}),
		goodness = $scope.goodness = {};

		$scope.saveGoodness = function(){
			
			Goodness.save(goodness, function(resp){
				
				
				
			});
			
		}
		
	}];
	
	return ctrl;
	
});