as yet unclassified
initializeLessonDisplay: aSqueakTutorial

	| cellExtents |

	self grid: (SqueakTutorialGrid size: 10 onMorph: aSqueakTutorial).
	aSqueakTutorial lessonDisplay addMorph: self grid.

	cellExtents := (self grid extent x) / (self grid cellAmount).
	self mouse mouseMorph: ImageMorph new.
	self mouse mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_grey.png') fullName) scaledToSize: cellExtents@cellExtents).
	"self mouse mouseMorph extent: 5@5. -> scheint keinen Effekt zu haben..."
	self mouse direction: #down.
	self mouse color: 'grey'.
	(self grid cellAt: (self mouse gridX)@(self mouse gridY)) addMorph: self mouse mouseMorph.
	
	self platform morph: ImageMorph new.
	self platform morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'platform.jpg') fullName) scaledToSize: cellExtents@cellExtents).
	
	(self grid cellAt: 5@5) addMorph: self platform morph.
	self platform gridX: 5.
	self platform gridY: 5.
	
	self createObstacles.