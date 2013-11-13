define ['jquery', 'app/example-view'], ($,View) ->
  describe 'Testing with RequireJS only', ->
    it '$.blockUI should be defined', ->
      view = new View()
      assert.isDefined view.getBlockUI(), '$.blockUI was undefined in example-view'
