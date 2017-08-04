initialization
initializeLessonDisplay: aSqueakTutorial

	self playfield: (SqueakTutorialGridPlayfield buildWithSize: 10 onMorph: aSqueakTutorial).
	
	self mouse: (self playfield addObjectOfType: #Mouse toPosition: 1@1).
	self goal: (self playfield addObjectOfType: #Goal toPosition: 7@7).
	
	self createObstacles.
	self registerInspectWindowObjects