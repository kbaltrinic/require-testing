define ['vendor/squire/Squire', 'data/mock-data'], (Squire, mock_data) ->
  injector = new Squire()
  injector.mock 'data/real-data', mock_data
  injector.require ['jquery','app/example-view'], ($, View) ->

    describe 'Testing with Squire only', ->

      view = null

      before ->
        view = new View()

      it '$.blockUI should be defined', ->
        assert.isDefined view.getBlockUI(), '$.blockUI was undefined in example-view'

      it 'the data should be mocked', ->
        view.getDataType().should.equal 'mock'
