as yet unclassified
isFinished

	^ ((self goal gridX = self mouse gridX) and: (self goal gridY = self mouse gridY))
	"WARUM HIER UMGEDREHT?!?!?!?!"