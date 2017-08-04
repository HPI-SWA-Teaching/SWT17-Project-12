initialization
resetLessonDisplay
	"Reset the graphical representation of the lesson"

	| cellExtents |
	
	cellExtents := (self playfield grid extent x) / (self playfield grid cellAmount).
	
	self playfield removeObjectsOfType: #Mouse fromPosition: (self mouse gridX)@(self mouse gridY).
	self mouse: (self playfield addObjectOfType: #Mouse toPosition: 1@1)