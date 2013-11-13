define(['data/real-data', 'jquery', 'vendor/jquery.blockui'], function(input, $) {
  var ExampleView;
  ExampleView = (function() {
    function ExampleView() {}

    ExampleView.prototype.render = function(element) {
      $(element).append("<div>Just proving the $.blockUI is defined: $.blockUI = " + $.blockUI + "</div>");
      return $(element).append("<div>Using " + input.dataType + " data.</div>");
    };

    ExampleView.prototype.getBlockUI = function() {
      return $.blockUI;
    };

    ExampleView.prototype.getDataType = function() {
      return input.dataType;
    };

    return ExampleView;

  })();
  return ExampleView;
});
