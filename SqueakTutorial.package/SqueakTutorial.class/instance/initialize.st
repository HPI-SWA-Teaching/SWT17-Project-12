initialization
initialize

	|simpleCircle|

	super initialize.
	self extent: 800@600.
	self initializeLessonGUI.
	self initializeEditGUI.
	"self initializeWorkspaceGUI."
	
	simpleCircle := CircleMorph new.
	self lessonGUI addMorph: simpleCircle.