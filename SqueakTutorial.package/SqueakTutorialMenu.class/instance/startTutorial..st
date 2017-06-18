initialization
startTutorial: aLesson

	| tutorial |
	
	tutorial := SqueakTutorialLessonWindow new.
	tutorial openInWorld.
	tutorial fullScreen.
	tutorial loadLesson: aLesson.
	
	self delete.