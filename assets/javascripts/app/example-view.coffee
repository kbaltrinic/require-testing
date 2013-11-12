define ['jquery','vendor/jquery.blockui'], ($) ->

  class ExampleView

    render: (element) ->
      $(element).append "<div>Just proving the $.blockUI is defined: $.blockUI = #{$.blockUI}</div>"
    
  ExampleView