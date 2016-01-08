define(['angular'], function(angular) {    
	
	var ctrl = ['$scope', 'FileUploader', function($scope, FileUploader){
		
		var image = $scope.image = {},
			uploader = $scope.uploader = new FileUploader({
				url: '/image/upload/:id/:type'
			});

		$scope.changeImageType = function(imageType){
			if(imageType == 'M-DISCOVERY-SWIP'){
				$scope.image.ownerId = 'mdiscoveryswip';
			}else{
				$scope.image.ownerId = '';
			}
		}
		
        // FILTERS
		uploader.filters.push({
            name: 'imageFilter',
            fn: function(item /*{File|FileLikeObject}*/, options) {
                var type = '|' + item.type.slice(item.type.lastIndexOf('/') + 1) + '|';
                return '|jpg|png|jpeg|bmp|gif|'.indexOf(type) !== -1;
            }
        });

        // CALLBACKS
        uploader.onWhenAddingFileFailed = function(item /*{File|FileLikeObject}*/, filter, options) {
        	alert("System only support Image file.");
        	
            console.info('onWhenAddingFileFailed', item, filter, options);
        };
        
        uploader.onBeforeUploadItem = function(item) {
        	
        	var id = image.ownerId,type=image.type;
        	if(id == null || type == null){
        		uploader.cancelAll();
        		alert('You must input ID and LOCATON.');
        		
        		return;
        	}
        	
        	item.url = item.url
        	.replace(':id',id)
        	.replace(':type',type);
        
            console.info('onBeforeUploadItem', item);
        };
        
        console.info('uploader', uploader);
	}];
	
	return ctrl;
	
});