initialization
initializeLessonDisplay: aSqueakTutorial

	self mouse mouseMorph: ImageMorph new.
	self mouse mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse.png') fullName) scaledToSize: 50@50).
	self mouse mouseMorph extent: 5@5.
	(aSqueakTutorial grid cellAt: 1@1) addMorph: self mouse mouseMorph.