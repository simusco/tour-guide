define(['angular'], function(angular) {    
	
	var ctrl = ['$scope','$resource', function($scope, $resource){
		
		var Ticket = $resource('/tour-guide/ticket', {}, {'update': { method:'PUT' }}),
			ticket = $scope.ticket = {};
		
		$scope.saveTicket = function(){
			Ticket.save(ticket, function(){
				
			});
		}
		
	}];
	
	return ctrl;
	
});