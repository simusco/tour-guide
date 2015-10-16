define(['angular'], function(angular) {
	
	var ctrl = ['$scope','$resource', function($scope, $resource){
		
		var ActivityPlan = $resource('/tour-guide/activity/plan/:id', {'id' : '@id'}, {'update': { method:'PUT' }});
		
		$scope.activityPlan = {};
		$scope.tags = [
		               {
		            	   tag:'主题',
		            	   subTags : 
		            		   [
		            	              {'tagId':'210','tag':'全部','checked':'false'},
		            	              {'tagId':'211','tag':'BBQ','checked':'false'},
		            	              {'tagId':'212','tag':'主题聚会','checked':'false'},
		            	              {'tagId':'213','tag':'观景休闲','checked':'false'},
		            	              {'tagId':'214','tag':'登山徒步','checked':'false'},
		            	              {'tagId':'215','tag':'亲子游玩','checked':'false'},
		            	              {'tagId':'216','tag':'自驾骑行','checked':'false'},
		            	              {'tagId':'217','tag':'草原风情','checked':'false'},
		            	              {'tagId':'218','tag':'海滩戏水','checked':'false'}
		            	       ]
		               }
		              ];
		
		$scope.save = function(){
			var activityPlanId = $scope.activityPlan.activityPlanId;
			
			if(activityPlanId != null && activityPlanId != ''){
				ActivityPlan.update($scope.activityPlan, function(resp){
					var data = resp.object;
					var flag = resp.flag;
					
					if(flag){
						print(data);
						alert("保存数据成功!");
					}
				});
			}else{
				ActivityPlan.save($scope.activityPlan, function(resp){
					var data = resp.object;
					var flag = resp.flag;
					
					if(flag){
						print(data);
						alert("保存数据成功!");
					}
				});
			}
			
			
		}
		
		$scope.loadActivityPlan = function(event){
			
			if(event.keyCode == 13){
				var activityPlanId = $scope.activityPlan.activityPlanId;
				if(activityPlanId != null){
					ActivityPlan.get({'id':activityPlanId}, function(resp){
						var data = resp.object;
						var flag = resp.flag;
						
						if(flag){
							$scope.activityPlan = data;
							
							console.log(data.object);
						}
					});
				}
			}
			
		}
		
	}];
	
	return ctrl;
	
});