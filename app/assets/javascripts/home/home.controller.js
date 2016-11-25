(function() {
    'use strict';

    angular.module('DurandalApp')
        .controller('homeController', homeController);

    homeController.$inject = ['tournaments']

    function homeController(tournaments) {
        var homeCtrl = this;
        
        homeCtrl.tournaments = tournaments;
    }

})();
