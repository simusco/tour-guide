define(['angular'], function(angular) {    
	
	var ctrl = ['$scope', function($scope){
		
		$scope.activityPlan = {};
		
		$scope.save = function(){
			for(var x in $scope.activityPlan){
				console.log($scope.activityPlan[x]);
			}
		}
		
	}];
	
	return ctrl;
	
});