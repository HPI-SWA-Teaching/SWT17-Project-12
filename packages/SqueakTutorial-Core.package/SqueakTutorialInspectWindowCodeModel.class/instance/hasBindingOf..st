as yet unclassified
hasBindingOf: aString
	
	self doItReceiver ifNotNil: [:obj |
		(obj class allInstVarNames includes: aString asSymbol)
			ifTrue: [^ true]].
	
	^ false 