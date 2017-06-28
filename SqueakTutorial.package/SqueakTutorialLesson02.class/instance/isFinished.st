initialization
isFinished

	((self gridX = self goal gridX) and: (self gridY = self goal gridY)) ifTrue: [ ^true ].