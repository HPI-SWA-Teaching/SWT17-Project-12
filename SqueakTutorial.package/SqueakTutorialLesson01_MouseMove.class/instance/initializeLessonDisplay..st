initialization
initializeLessonDisplay: aSqueakTutorial

	| mouseExtents |

	mouseExtents := (aSqueakTutorial grid extent x) / (aSqueakTutorial grid numberOfColumns).
	self mouse mouseMorph: ImageMorph new.
	self mouse mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse.png') fullName) scaledToSize: mouseExtents@mouseExtents).
	self mouse mouseMorph extent: 5@5.
	self mouse direction: #up.
	(aSqueakTutorial grid cellAt: 1@1) addMorph: self mouse mouseMorph.