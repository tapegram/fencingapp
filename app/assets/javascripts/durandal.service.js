(function() {
    'use strict';

    angular.module('DurandalApp')
        .service('TournamentsDataService', TournamentsDataService);


    TournamentsDataService.$inject = ['$http']

    function TournamentsDataService($http) {
        var service = this;

        service.getAllTournaments = function() {
            var promise = $http({
                method: "GET",
                url: ('https://fencingapp-tapegram.c9users.io/api/v1/tournaments')
            });

            return promise;
        }
    }

})();