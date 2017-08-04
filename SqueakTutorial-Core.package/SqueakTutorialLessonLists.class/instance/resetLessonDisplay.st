initialization
resetLessonDisplay

	| cellExtents |
	
	cellExtents := (self playfield grid extent x) / (self playfield grid cellAmount).