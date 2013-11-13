require({
  paths: {
    jquery: 'vendor/jquery/jquery'
  },
  shim: {
    'vendor/jquery.blockui': {
      deps: ['jquery']
    }
  }
}, ['app/example-view', 'jquery'], function(ExampleView) {
  var view;
  view = new ExampleView();
  return view.render('body');
});
