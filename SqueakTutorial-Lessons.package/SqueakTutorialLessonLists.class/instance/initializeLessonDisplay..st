initialization
initializeLessonDisplay: aSqueakTutorial

	self playfield: (SqueakTutorialGridPlayfield buildWithSize: 10 onMorph: aSqueakTutorial).