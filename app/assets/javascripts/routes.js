(function () {

angular.module('DurandalApp')
.config(RoutesConfig);

RoutesConfig.$inject = ['$stateProvider', '$urlRouterProvider'];
function RoutesConfig($stateProvider, $urlRouterProvider) {

  // Redirect to home if no other URL matches
  $urlRouterProvider.otherwise('/');

  // Set up UI states
  $stateProvider
   .state('home', {
        url: '/',
        templateUrl: 'home/_home.template.html',
        controller: 'homeController as homeCtrl',
        resolve: {
            tournaments: ['TournamentsDataService', function(TournamentsDataService) {
                return TournamentsDataService.getAllTournaments().then(
                    function(response) {
                        console.log(response.data);
                        return response.data;
                });
            }]
        }
    });
}


})();
