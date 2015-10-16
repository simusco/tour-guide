define(['angular'], function(angular) {    
	
	var ctrl = ['$scope','$resource', function($scope, $resource){
		
		var Topic = $resource('/tour-guide/topic', {}, {'update': { method:'PUT' }}),
			topic = $scope.topic = {'activityIds':['ID1','ID2','ID3']};
		
		$scope.saveTopic = function(){
			
			Topic.save(topic, function(resp){
				console.log(resp);
			});
			
		}
		
	}];
	
	return ctrl;
	
});