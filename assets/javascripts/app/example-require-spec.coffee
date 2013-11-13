define ['jquery', 'app/example-view'], ($,View) ->
  
  describe 'Testing with RequireJS only', ->
    view = null

    before ->
      view = new View()

    it '$.blockUI should be defined', ->
      assert.isDefined view.getBlockUI(), '$.blockUI was undefined in example-view'

    it 'the data should be real', ->
      view.getDataType().should.equal 'real'
