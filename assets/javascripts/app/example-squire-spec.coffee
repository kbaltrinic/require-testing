define ['vendor/squire/Squire'], (Squire) ->
  injector = new Squire()
  injector.mock 'nothing', {}
  injector.require ['jquery','app/example-view'], ($, View) ->

    describe 'Testing with Squire only', ->

      it '$.blockUI should be defined', ->
        view = new View()
        assert.isDefined view.getBlockUI(), '$.blockUI was undefined in example-view'
