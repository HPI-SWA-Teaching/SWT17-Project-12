initialization
startTutorial

	| tutorial |
	
	tutorial := SqueakTutorialLessonWindow new.
	tutorial openInWorld.
	tutorial fullScreen.
	tutorial loadLesson: SqueakTutorialLessonManager next.
	
	self delete.