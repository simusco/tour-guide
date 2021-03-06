define(['angular'], function(angular) {    
	
	var ctrl = ['$scope','$resource', "$http", function($scope, $resource, $http){
		
		$scope.discovery = {};
		$scope.queryParams = {};
		
		function getDiscoveryTypeList(){
			var DiscoveryType = $resource('/m/maintain/discovery/type.html');
			DiscoveryType.get({},function(resp){
				$scope.discoveryTypeList = resp.discoveryTypeList;
			});
		}
		
		$scope.saveDiscovery = function(){
			var Discovery = $resource('/m/maintain/discovery.html');
			Discovery.save($scope.discovery, function(resp){
				var flag = resp.flag;
				var message = resp.message;
				
				alert(message);
			});
		}
		
		//启动load 
		getDiscoveryTypeList();
		
		//查询
		$scope.query = function (){
			var DiscoveryType = $resource('/m/maintain/discovery.html');
			DiscoveryType.get($scope.queryParams,function(resp){
				$scope.discoveryList = resp.discoveryList;
			});
		}
		
		$scope.deleteDiscovery = function(discoveryList, discovery){
			$http['delete']('/m/maintain/discovery/'+discovery.discoveryId).success(function(resp){
				var flag = resp.flag;
				
				if(flag){
					var index = -1;
					for(var i=0;i<discoveryList.length;i++){
						var aa = discoveryList[i];
						if(aa.discoveryId == discovery.discoveryId){
							index = i;
						}
					}
					discoveryList.splice(index,1);
					alert("操作成功!");
				}
			});
		}
		
		$scope.loadDiscovery = function(event){
			
			if(event.keyCode == 13){
				var discoveryId = $scope.discovery.discoveryId;
				if(discoveryId != null){
					var Discovery = $resource('/m/maintain/discovery/'+discoveryId);
					Discovery.get($scope.queryParams,function(resp){
						if(resp.flag){
							$scope.discovery = resp.object;
						}else{
							alert("加载数据错误!");
						}
					});
				}
			}
			
		}
	}];
	
	return ctrl;
	
});