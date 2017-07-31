as yet unclassified
resetLessonDisplay
	| cellExtents |
	
	cellExtents := (self grid extent x) / (self grid cellAmount).
	
	(self grid cellAt: ((self mouse gridX)@(self mouse gridY))) removeAllMorphs.
	self gridX: 1.
	self gridY: 1.
	(self grid cellAt: (self mouse gridX)@(self mouse gridY)) addMorph: self mouse mouseMorph.
	self mouse mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_grey.png') fullName) scaledToSize: cellExtents@cellExtents).
	
	self mouse direction: #down.
	
	self goal morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'goal.png') fullName) scaledToSize: cellExtents@cellExtents).
	(self grid cellAt: (self goal gridX)@(self goal gridY)) addMorph: self goal morph.
	
	"self createGates."