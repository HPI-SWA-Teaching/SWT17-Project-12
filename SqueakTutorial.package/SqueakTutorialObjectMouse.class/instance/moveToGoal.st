mouse controlling
moveToGoal
	"Moves mouse straight to the goal (debugging method) DELEEEEEETE!!!1!11!"

	(self playfield grid cellAt: ((self gridX)@(self gridY))) removeAllMorphs.
	self gridX: self lesson goal gridX.
	self gridY: self lesson goal gridY.
	
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) addMorph: self mouseMorph.
	
	(self lesson isFinished) ifTrue: [self lesson lessonWindow enableFinishButton.].