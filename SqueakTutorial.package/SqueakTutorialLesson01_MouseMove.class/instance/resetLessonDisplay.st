initialization
resetLessonDisplay

	(self squeakTutorial grid cellAt: ((self gridX)@(self gridY))) removeAllMorphs.
	self gridX: 1.
	self gridY: 1.
	(self squeakTutorial grid cellAt: (self gridX)@(self gridY)) addMorph: self mouse mouseMorph.