define(['app/example-view'], function(View) {
  return describe('Testing with RequireJS only', function() {
    var view;
    view = null;
    before(function() {
      return view = new View();
    });
    it('$.blockUI should be defined', function() {
      return assert.isDefined(view.getBlockUI(), '$.blockUI was undefined in example-view');
    });
    return it('the data should be real', function() {
      return view.getDataType().should.equal('real');
    });
  });
});
