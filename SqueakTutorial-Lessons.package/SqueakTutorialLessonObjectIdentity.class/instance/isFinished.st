as yet unclassified
isFinished

	self mouse2 ifNotNil: [
		^ ((self mouse gridX = self goal gridX) and: (self mouse gridY = self goal gridY) and: (self mouse2 gridX = self platform gridX) and: (self mouse2 gridY = self platform gridY))].
	
	^ false