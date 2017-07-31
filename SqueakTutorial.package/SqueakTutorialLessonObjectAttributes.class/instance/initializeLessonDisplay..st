as yet unclassified
initializeLessonDisplay: aSqueakTutorial

	| cellExtents goalX goalY |

	self grid: (SqueakTutorialGrid size: 10 onMorph: aSqueakTutorial).
	aSqueakTutorial lessonDisplay addMorph: self grid.

	cellExtents := (self grid extent x) / (self grid cellAmount).
	self mouse mouseMorph: ImageMorph new.
	self mouse mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_grey.png') fullName) scaledToSize: cellExtents@cellExtents).
	self mouse direction: #down.
	self mouse color: 'grey'.
	(self grid cellAt: 1@1) addMorph: self mouse mouseMorph.
	
	self goal morph: ImageMorph new.
	self goal morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'goal.png') fullName) scaledToSize: cellExtents@cellExtents).
	goalX := 7.
	goalY := 7.
	(self grid cellAt: goalX@goalY) addMorph: self goal morph.
	self goal gridX: goalX.
	self goal gridY: goalY.
	
	self createObstacles.
	self registerInspectWindowObjects.