initialization
initializeLessonDisplay: aSqueakTutorial

	| cellExtents |

	self grid: (SqueakTutorialGrid size: 10 onMorph: aSqueakTutorial).
	aSqueakTutorial lessonDisplay addMorph: self grid.

	cellExtents := (self grid extent x) / (self grid cellAmount).
	self mouse mouseMorph: ImageMorph new.
	self mouse mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse_down_grey.png') fullName) scaledToSize: cellExtents@cellExtents).
	self mouse direction: #down.
	self mouse color: 'grey'.
	(self grid cellAt: 1@1) addMorph: self mouse mouseMorph.