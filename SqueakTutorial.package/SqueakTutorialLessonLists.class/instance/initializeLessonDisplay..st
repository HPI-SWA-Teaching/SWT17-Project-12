initialization
initializeLessonDisplay: aSqueakTutorial

	| cellExtents stone |

	self grid: (SqueakTutorialGrid size: 10 onMorph: aSqueakTutorial).
	aSqueakTutorial lessonDisplay addMorph: self grid.

	cellExtents := (self grid extent x) / (self grid cellAmount).
	
	stone := ImageMorph new.
	stone image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'wall.png') fullName) scaledToSize: cellExtents@cellExtents).
	
	self stoneList at: 1 put: stone.
	
	"(self grid cellAt: (self gridX)@(self gridY)) addMorph: stone."