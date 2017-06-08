initialization
resetLessonDisplay

	(self squeakTutorial grid cellAt: ((self x)@(self y))) removeAllMorphs.
	self x: 1.
	self y: 1.
	(self squeakTutorial grid cellAt: (self x)@(self y)) addMorph: self mouse mouseMorph.