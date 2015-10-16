define(['angular'], function(angular) {    
	
	var ActivityGoodness = $resource('/tour-guide/activity/goodness', {}, {'update': { method:'PUT' }});
	
	var ctrl = ['$scope', function($scope){
		
		$scope.activityGoodness = {};
		
		$scope.saveGoodness = function(){
			
			ActivityGoodness.save(activityGoodness, function(resp){
				
				
				
			});
			
		}
		
	}];
	
	return ctrl;
	
});