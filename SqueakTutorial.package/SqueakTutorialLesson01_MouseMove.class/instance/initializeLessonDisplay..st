initialization
initializeLessonDisplay: aLessonDisplay

	self mouseMorph: ImageMorph new.
	self mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse.png') fullName) scaledToSize: 50@50).
	self mouseMorph extent: 5@5.
	aLessonDisplay addMorph: self mouseMorph.