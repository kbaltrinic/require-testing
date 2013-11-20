define -> 
  
  class Base
    constructor: (name)->
      @name = name

  class TestClass extends Base
    constructor: ->
      super 'TestClass'

  ctx = {TestClass: TestClass}
  spy = sinon.spy(ctx, 'TestClass')

  instance = new ctx.TestClass()

  describe 'Spying on Constructor w/out Require.JS', ->
  
    it 'should have successfully invoked a property of "this" in constructor.', ->
      instance.name.should.equal 'TestClass'

    it 'should have successfully spied on the constructor', ->
      spy.should.have.been.called

  TestClass