mouse controlling
moveRight
	
	self rotate: #right.
	
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) removeAllMorphs.
	self lesson gridX: self lesson gridX + 1.
	self checkBounds.
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) addMorph: self mouseMorph.
	
	(self lesson isFinished) ifTrue: [self lesson lessonWindow enableFinishButton.].
	
	(Delay forMilliseconds: 500) wait.