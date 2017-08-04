initialization
initializeLessonDisplay: aSqueakTutorial

	self playfield: (SqueakTutorialGridPlayfield buildWithSize: 10 onMorph: aSqueakTutorial);
		mouse: (self playfield addObjectOfType: #Mouse toPosition: 1@1);
		goal: (self playfield addObjectOfType: #Goal toPosition: 7@7);
		createWalls;
		registerInspectWindowObjects.