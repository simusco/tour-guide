define(['angular'], function(angular) {
	
	var ctrl = ['$scope','$resource', '$http', function($scope, $resource, $http){
		
		function loadAdvImage(){
			var AdvImage = $resource('/m/maintain/advImage.html');
			AdvImage.get({},function(resp){
				$scope.advImageList = resp.advImageList;
			});
		}
		
		//启动load 
		loadAdvImage();
		
		
		$scope.deleteImage = function(array, imageId){
			$http['delete']('/image/'+imageId).success(function(resp){
				var data = resp.object;
				var flag = resp.flag;
				
				if(flag){
					var index = -1;
					for(var i=0;i<array.length;i++){
						var aa = array[i];
						if(aa.imageId == imageId){
							index = i;
						}
					}
					array.splice(index,1);
					alert("操作成功!");
				}
			});
		};
		
		
		$scope.updateLinkURL = function(ai){
			var AdvImage = $resource('/m/maintain/advImage.html', {}, {'update': { method:'PUT' }});
			AdvImage.save(ai, function(resp){
				var data = resp.object;
				var flag = resp.flag;
				
				if(flag){
					console.log(data);
					alert("保存数据成功!");
				}
			});
		}
		
	}];
	
	return ctrl;
	
});