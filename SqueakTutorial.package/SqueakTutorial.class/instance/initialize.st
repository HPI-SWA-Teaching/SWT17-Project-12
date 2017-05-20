initialization
initialize

	| simpleLesson |

	super initialize.
	self extent: 800@600.
	self initializeLessonGUI.
	self initializeEditGUI.
	
	codeWindowText := ''.
	
	self mouseMorph: CircleMorph new.
	self lessonGUI addMorph: self mouseMorph.
	
	simpleLesson := SqueakTutorialLesson lessonName: 'LESSON 1' lessonDescription: 'This is the first lesson of this tutorial! ...'.
	self loadLesson: simpleLesson.