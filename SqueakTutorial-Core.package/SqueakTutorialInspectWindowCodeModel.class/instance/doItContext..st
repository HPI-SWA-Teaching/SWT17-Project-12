as yet unclassified
doItContext: aContext

	aContext == doItContext ifTrue: [^ self].
	doItContext := aContext.
	self contextChanged.