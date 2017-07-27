initialization
initializeLessonDisplay: aSqueakTutorial

	| cellExtents goalX goalY |

	self grid: (SqueakTutorialGrid size: 10 onMorph: aSqueakTutorial).
	aSqueakTutorial lessonDisplay addMorph: self grid.
	"Transcript show: aSqueakTutorial lessonDisplay extent x."

	cellExtents := (self grid extent x) / (self grid cellAmount).
	self mouse mouseMorph: ImageMorph new.
	self mouse mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_grey.png') fullName) scaledToSize: cellExtents@cellExtents).
	"self mouse mouseMorph extent: 5@5. -> scheint keinen Effekt zu haben..."
	self mouse direction: #down.
	self mouse color: 'grey'.
	(self grid cellAt: (self gridX)@(self gridY)) addMorph: self mouse mouseMorph.
	
	self goal morph: ImageMorph new.
	self goal morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'goal.png') fullName) scaledToSize: cellExtents@cellExtents).
	goalX := (self grid cellAmount - 5) atRandom + 4.
	goalY := (self grid cellAmount - 5) atRandom + 4.
	(self grid cellAt: goalX@goalY) addMorph: self goal morph.
	self goal gridX: goalX.
	self goal gridY: goalY.