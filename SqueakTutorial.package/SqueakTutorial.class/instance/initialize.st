initialization
initialize

	|simpleCircle simpleLesson|

	super initialize.
	self extent: 800@600.
	self initializeLessonGUI.
	self initializeEditGUI.
	"self initializeWorkspaceGUI."
	
	simpleCircle := CircleMorph new.
	self lessonGUI addMorph: simpleCircle.
	
	simpleLesson := SqueakTutorialLesson lessonName: 'LESSON 01' lessonDescription: 'This is the first lesson of this tutorial! ...'.
	self loadLesson: simpleLesson.