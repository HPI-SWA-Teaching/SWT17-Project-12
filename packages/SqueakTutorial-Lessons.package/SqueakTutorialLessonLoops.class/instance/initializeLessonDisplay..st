initialization
initializeLessonDisplay: aSqueakTutorial
	"Create the goal object at a random location on the grid"

	| goalX goalY |

	self playfield: (SqueakTutorialGridPlayfield buildWithSize: 10 onMorph: aSqueakTutorial);
		mouse: (self playfield addObjectOfType: #Mouse toPosition: 1@1).
		
	goalX := (self playfield grid cellAmount - 5) atRandom + 4.
	goalY := (self playfield grid cellAmount - 5) atRandom + 4.
	self goal: (self playfield addObjectOfType: #Goal toPosition: goalX@goalY).