as yet unclassified
isReachedBy: anObject
	"Answers if this goal is reached by a specific visible object"

	^((self gridX = anObject gridX) and: (self gridY = anObject gridY))