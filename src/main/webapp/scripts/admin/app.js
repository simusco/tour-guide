requirejs.config({
	paths: {
		angular: '../angular',
		uiRouter: '../angular-ui-router',
		jquery: '../jquery.min',
		angularResource: '../angular-resource',
		angularFileupload: '../angular-file-upload',
		bootstrap: '../bootstrap'
    },
    shim: {
        'jquery': {
            exports: 'jquery'
        },
        'angular': {
        	deps: ['jquery'],
            exports: 'angular'
        },
        'uiRouter': {
        	deps: ['angular'],
            exports: 'uiRouter'
        },
        'angularResource': {
        	deps: ['angular'],
            exports: 'angularResource'
        },
        'angularFileupload': {
        	deps: ['angular'],
            exports: 'angularFileupload'
        },
        'bootstrap':{
        	deps: ['jquery'],
        	exports: 'bootstrap'
        }
    }
});

require( [
          'angular',
          'uiRouter',
          'angularResource',
          'modules/ActivityModule',
          'angularFileupload',
          'jquery',
          'bootstrap'
          ], function(angular) {
	
	angular.bootstrap(document, ["ActivityModule"])
	
});