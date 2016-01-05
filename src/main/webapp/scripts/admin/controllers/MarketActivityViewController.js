define(['angular'], function(angular) {    
	
	var ctrl = ['$scope','$resource', function($scope, $resource){
		
		function getMarketActivitys(){
			var MarketActivity = $resource('/m/maintain/marketActivity.html');
			MarketActivity.get({},function(resp){
				var data = resp.object;
				var flag = resp.flag;
				
				if(flag){
					$scope.marketActivitys = data.marketActivityList;
				}
			});
		}
		
		var defaultPresent = {id:'0',name:'礼品名称',quantity:'0'};
		var ma = $scope.marketActivity = {presents : [defaultPresent]};
		var index = 1;
		
		$scope.addPresent = function(){
			var present = {id:'id-' + (++index),name:'礼品名称',quantity:'0'};
			$scope.marketActivity.presents.push(present);
		}
		
		$scope.deletePresent = function(present){
			var ps = ma.presents;
			for(var i=0;i<ps.length;i++){
				var p = ps[i];
				if(p.id == present.id){
					ps.splice(i, 1);
					break;
				}
			}
		}
		
		$scope.changeMarketActivity = function(activityId){
			
			for(var i=0;i<$scope.marketActivitys.length;i++){
				var temp = $scope.marketActivitys[i];
				
				if(temp.activityId == activityId){
					temp.presents = [defaultPresent];
					$scope.marketActivity = temp;
					break;
				}
			}
			
		}
		
		$scope.save = function(){
			
			var MarketActivity = $resource('/m/maintain/marketActivity.html');
			MarketActivity.save($scope.marketActivity,function(resp){
				var data = resp.object;
				var flag = resp.flag;
				
				if(flag){
					alert("保存数据成功!");
				}else{
					alert(resp.message);
				}
			});
			
		}
		
		getMarketActivitys();
	}];
	
	return ctrl;
	
});