define([
        'angular',
        '../controllers/BaseInfoViewController',
        '../controllers/GoodnessViewController',
        '../controllers/ImageViewController',
        '../controllers/RecViewController',
        '../controllers/TicketViewController',
        '../controllers/TopicViewController',
        
        '../services/ActivityPlanService'
        ], function(
		angular, 
		baseInfoViewController, 
		goodnessViewController, 
		imageViewController, 
		recViewController, 
		ticketViewController, 
		topicViewController,
		activityPlanService
        ) {
	
	var module = angular.module('ActivityModule',['ui.router','ngResource','angularFileUpload']);

	module.config(function($stateProvider, $urlRouterProvider) {
		$urlRouterProvider.when("", "/nav");
		
		$stateProvider.state('nav', {
	      url: "/nav",
	      templateUrl: "nav.html"
	    }).state('nav.baseInfo', {
	      url: "/baseInfo",
	      templateUrl: "baseInfo.html"
	    }).state('nav.image', {
		      url: "/image",
		      templateUrl: "image.html"
	    }).state('nav.goodness', {
	      url: "/goodness",
	      templateUrl: "goodness.html"
	    }).state('nav.rec', {
	      url: "/rec",
	      templateUrl: "rec.html"
	    }).state('nav.ticket', {
	      url: "/ticket",
	      templateUrl: "ticket.html"
	    }).state('nav.topic', {
	      url: "/topic",
	      templateUrl: "topic.html"
	    });
	});
	
	module.controller('BaseInfoViewController', baseInfoViewController);
	module.controller('GoodnessViewController', goodnessViewController);
	module.controller('ImageViewController', imageViewController);
	module.controller('RecViewController', recViewController);
	module.controller('TicketViewController', ticketViewController);
	module.controller('TopicViewController', topicViewController);
	
	module.service('ActivityPlanService', activityPlanService);
	
	return module;
	
});