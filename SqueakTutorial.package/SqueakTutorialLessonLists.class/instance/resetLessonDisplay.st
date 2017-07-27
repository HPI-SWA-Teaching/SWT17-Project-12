initialization
resetLessonDisplay

	| cellExtents |
	
	cellExtents := (self grid extent x) / (self grid cellAmount).
	
	(self grid cellAt: ((self gridX)@(self gridY))) removeAllMorphs.
	self gridX: 0.
	self gridY: 0.