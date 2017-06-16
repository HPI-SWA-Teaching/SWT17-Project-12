initialization
startTutorial

	| tutorial |
	
	tutorial := SqueakTutorialLessonWindow new.
	tutorial openInWorld.
	tutorial fullScreen.
	tutorial loadLesson: SqueakTutorialLesson01_MouseMove new..
	
	self delete.