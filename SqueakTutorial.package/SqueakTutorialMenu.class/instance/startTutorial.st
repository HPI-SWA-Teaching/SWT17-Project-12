as yet unclassified
startTutorial

	| tutorial |
	
	tutorial := SqueakTutorialLessonWindow new.
	tutorial openInWorld.
	tutorial fullScreen.
	tutorial loadLesson1.
	
	self delete.