require ['app/sinon-constructor-spy-spec'], (TestClass) ->
	t = new TestClass()
	console.log "TestClass.name is #{t.names}"