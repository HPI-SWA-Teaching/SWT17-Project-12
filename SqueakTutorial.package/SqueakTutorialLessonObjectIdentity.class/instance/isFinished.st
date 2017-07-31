as yet unclassified
isFinished

	^ ((self mouse gridX = self goal gridX) and: (self mouse gridY = self goal gridY) and: (self mouse2 gridX = self platform gridX) and: (self mouse2 gridY = self platform gridY)).