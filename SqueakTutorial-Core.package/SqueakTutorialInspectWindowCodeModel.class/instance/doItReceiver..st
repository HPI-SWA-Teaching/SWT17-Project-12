as yet unclassified
doItReceiver: anObject

	anObject == doItReceiver ifTrue: [^ self].
	doItReceiver := anObject.
	self receiverChanged.