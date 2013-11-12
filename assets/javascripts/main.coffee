require
  paths:
    jquery: 'vendor/jquery/jquery'
  , ['app/example-view', 'jquery']
  , (ExampleView) ->
    view = new ExampleView()
    view.render('body')