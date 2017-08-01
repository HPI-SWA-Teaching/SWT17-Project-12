as yet unclassified
resize

	| newSize |
	
	newSize := ((self extent x / 2) truncated min: (self extent y)).
	self currentLesson playfield grid resize: newSize.