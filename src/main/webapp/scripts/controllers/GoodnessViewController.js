define(['angular'], function(angular) {    
	
	var ctrl = ['$scope','$resource', function($scope, $resource){
		
		var Goodness = $resource('/tour-guide/activity/goodness', {}, {'update': { method:'PUT' }}),
		goodness = $scope.goodness = {};

		$scope.saveGoodness = function(){
			
			Goodness.save(goodness, function(resp){
				
				var data = resp.object;
				var flag = resp.flag;
				
				if(flag){
					print(data);
					alert("保存数据成功!");
				}
				
			});
			
		}
		
	}];
	
	return ctrl;
	
});