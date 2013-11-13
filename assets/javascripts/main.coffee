require
  paths:
    jquery: 'vendor/jquery/jquery'
  shim:
    'vendor/jquery.blockui':
      deps:['jquery']
  , ['app/example-view', 'jquery']
  , (ExampleView) ->
    view = new ExampleView()
    view.render('body')