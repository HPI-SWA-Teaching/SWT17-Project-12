as yet unclassified
isFinished

	self mouse2 ifNotNil: [
		^ ((self goal isReachedBy: self mouse) and: (self mouse2 gridX = self platform gridX) and: (self mouse2 gridY = self platform gridY))].
	
	^ false