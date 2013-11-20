define [
	'vendor/squire/Squire'
	'./sinon-constructor-spy-spec'
	], 
	(Squire, TestClass) ->

  ctx = {TestClass: TestClass}
  spy = sinon.spy(ctx, 'TestClass')
  
  squire = new Squire()

  squire.mock 'app/sinon-constructor-spy-spec', -> ctx.TestClass

  squire.require ['app/user-of-TestClass'], ->
	  describe 'Spying on Constructor w/Require.JS and Squire', ->
	  
	    it 'should have successfully spied on the constructor', ->
	      spy.should.have.been.called

