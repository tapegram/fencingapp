(function () {
'use strict';

angular.module('DurandalApp')
.component('home', {
  templateUrl: 'home/_home.component.html',
  bindings: {
    list: '<'
  }
});

})();