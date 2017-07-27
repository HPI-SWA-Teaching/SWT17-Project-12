mouse controlling
moveToGoal
	"Moves mouse straight to the goal (debugging method)"

	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) removeAllMorphs.
	self lesson gridX: self lesson goal gridX.
	self lesson gridY: self lesson goal gridY.
	
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) addMorph: self mouseMorph.
	
	(self lesson isFinished) ifTrue: [self lesson lessonWindow enableFinishButton.].