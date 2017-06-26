as yet unclassified
decrementCheeseCounter
	"Decrements the cheeseCounter and checks, if it was the last cheese"

	(self cheeseCounter > 0) ifTrue: [self cheeseCounter: (self cheeseCounter - 1)]. 
	(self isFinished) ifTrue: [self lessonWindow enableFinishButton].