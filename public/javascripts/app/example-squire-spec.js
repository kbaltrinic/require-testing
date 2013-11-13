define(['vendor/squire/Squire', 'jquery', 'data/mock-data'], function(Squire, $, mock_data) {
  var injector;
  injector = new Squire();
  injector.mock('jquery', function() {
    return $;
  });
  injector.mock('data/real-data', mock_data);
  return injector.require(['app/example-view'], function(View) {
    return describe('Testing with Squire only', function() {
      var view;
      view = null;
      before(function() {
        return view = new View();
      });
      it('$.blockUI should be defined', function() {
        return assert.isDefined(view.getBlockUI(), '$.blockUI was undefined in example-view');
      });
      return it('the data should be mocked', function() {
        return view.getDataType().should.equal('mock');
      });
    });
  });
});
