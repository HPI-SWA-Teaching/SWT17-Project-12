as yet unclassified
initializeLessonDisplay: aSqueakTutorial
	"Initialize the display with a graphical representation of the lesson (on the left half of the lesson window)"
	
	self playfield: (SqueakTutorialGridPlayfield buildWithSize: 10 onMorph: aSqueakTutorial);
		mouse: (self playfield addObjectOfType: #Mouse toPosition: 1@1);
		goal: (self playfield addObjectOfType: #Goal toPosition: 7@7);
		platform: (self playfield addObjectOfType: #Platform toPosition: 2@3).
	
	self createWalls