define ['data/real-data', 'jquery','vendor/jquery.blockui'], (input, $) ->

  class ExampleView

    render: (element) ->
      $(element).append "<div>Just proving the $.blockUI is defined: $.blockUI = #{$.blockUI}</div>"
      $(element).append "<div>Using #{input.dataType} data.</div>"
    
    getBlockUI: -> $.blockUI

    getDataType: -> input.dataType
    
  ExampleView