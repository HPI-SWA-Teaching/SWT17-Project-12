as yet unclassified
resetLessonDisplay
	"Reset the graphical representation of the lesson"

	| cellExtents |
	
	cellExtents := (self playfield grid extent x) / (self playfield grid cellAmount).
	
	self playfield removeObjectsOfType: #Mouse fromPosition: (self mouse gridX)@(self mouse gridY).
	self mouse: (self playfield addObjectOfType: #Mouse toPosition: 1@1).
	
	self mouse2 ifNotNil: [
		(self playfield removeObject: self mouse2 morph fromPosition: (self mouse2 gridX)@(self mouse2 gridY)).
		self mouse2: nil]