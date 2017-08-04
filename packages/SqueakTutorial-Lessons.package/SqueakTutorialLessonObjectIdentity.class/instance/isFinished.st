finish check
isFinished
	"Answers if the goal of the current lesson is reached"

	self mouse2 ifNotNil: [
		^ ((self goal isReachedBy: self mouse) and: (self mouse2 gridX = self platform gridX) and: (self mouse2 gridY = self platform gridY))].
	^ false