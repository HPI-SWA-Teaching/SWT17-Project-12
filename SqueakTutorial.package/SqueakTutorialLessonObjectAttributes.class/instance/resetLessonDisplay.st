as yet unclassified
resetLessonDisplay
	| cellExtents |
	
	cellExtents := (self playfield grid extent x) / (self playfield grid cellAmount).
	
	"(self playfield grid cellAt: ((self mouse gridX)@(self mouse gridY))) removeAllMorphs."
	(self playfield removeObjectsOfType: #Mouse fromPosition: (self mouse gridX)@(self mouse gridY)).
	self mouse gridX: 1.
	self mouse gridY: 1.
	(self playfield grid cellAt: (self mouse gridX)@(self mouse gridY)) addMorph: self mouse mouseMorph.
	self mouse mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_grey.png') fullName) scaledToSize: cellExtents@cellExtents).
	
	self mouse direction: #down.
	
	self goal morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'goal.png') fullName) scaledToSize: cellExtents@cellExtents).
	(self playfield grid cellAt: (self goal gridX)@(self goal gridY)) addMorph: self goal morph.
	
	"self createGates."