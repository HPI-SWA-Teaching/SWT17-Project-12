initialization
initializeLessonDisplay: aSqueakTutorial

	| cellExtents cheeseX cheeseY |

	self grid: (SqueakTutorialGrid size: 10 onMorph: aSqueakTutorial).
	aSqueakTutorial lessonDisplay addMorph: self grid.
	"Transcript show: aSqueakTutorial lessonDisplay extent x."

	cellExtents := (self grid extent x) / (self grid cellAmount).
	self mouse mouseMorph: ImageMorph new.
	self mouse mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse.png') fullName) scaledToSize: cellExtents@cellExtents).
	"self mouse mouseMorph extent: 5@5. -> scheint keinen Effekt zu haben..."
	self mouse direction: #down.
	(self grid cellAt: 1@1) addMorph: self mouse mouseMorph.
	
	self cheese cheeseMorph: ImageMorph new.
	self cheese cheeseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'cheese.png') fullName) scaledToSize: cellExtents@cellExtents).
	cheeseX := (self grid cellAmount - 3) atRandom + 2.
	cheeseY := (self grid cellAmount - 3) atRandom + 2.
	(self grid cellAt: cheeseX@cheeseY) addMorph: self cheese cheeseMorph.
	self cheese gridX: cheeseX.
	self cheese gridY: cheeseY.