'use strict';
angular.module('EpsMAJJ', ['angularjs-selectpicker'])
  .config(function () {
  })

  // .directive('tooltip', function(){
  //   return {
  //     restrict: 'A',
  //     link: function(scope, element, attrs){
  //       $(element).hover(function(){
  //           var elementOffsetLeft = element.offset().left
  //           var elementOffsetRight = ($(window).width() - (element.offset().left + element.outerWidth()));

  //           $(".tool-dialog.in").remove();
  //           element.parent().append("<div class='tool-dialog in'><p>"+attrs.title+"</p></div>");

  //           if (elementOffsetLeft > elementOffsetRight){
  //             $(".tool-dialog.in").css({"margin-right": "5px","float": "right"});
  //           }else{
  //             $(".tool-dialog.in").css({"margin-left": "5px","float": "left"});
  //           }
  //       }, function(){
  //           $(".tool-dialog.in").remove();
  //       });
  //     }
  //   };
  // })