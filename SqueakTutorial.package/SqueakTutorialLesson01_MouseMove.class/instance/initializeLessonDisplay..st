initialization
initializeLessonDisplay: aLessonDisplay

	self mouse mouseMorph: ImageMorph new.
	self mouse mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse.png') fullName) scaledToSize: 50@50).
	self mouse mouseMorph extent: 5@5.
	aLessonDisplay addMorph: self mouse mouseMorph.