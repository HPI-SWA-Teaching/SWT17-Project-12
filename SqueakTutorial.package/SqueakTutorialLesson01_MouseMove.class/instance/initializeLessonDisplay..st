initialization
initializeLessonDisplay: aSqueakTutorial

	| cellExtents cheeseX cheeseY |

	cellExtents := (aSqueakTutorial grid extent x) / (aSqueakTutorial grid numberOfColumns).
	self mouse mouseMorph: ImageMorph new.
	self mouse mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse.png') fullName) scaledToSize: cellExtents@cellExtents).
	"self mouse mouseMorph extent: 5@5. -> scheint keinen Effekt zu haben..."
	self mouse direction: #up.
	(aSqueakTutorial grid cellAt: 1@1) addMorph: self mouse mouseMorph.
	
	self cheese cheeseMorph: ImageMorph new.
	self cheese cheeseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'cheese.png') fullName) scaledToSize: cellExtents@cellExtents).
	cheeseX := (aSqueakTutorial grid numberOfColumns - 3) atRandom + 2.
	cheeseY := (aSqueakTutorial grid numberOfRows - 3) atRandom + 2.
	(aSqueakTutorial grid cellAt: cheeseX@cheeseY) addMorph: self cheese cheeseMorph.
	self cheese gridX: cheeseX.
	self cheese gridY: cheeseY.