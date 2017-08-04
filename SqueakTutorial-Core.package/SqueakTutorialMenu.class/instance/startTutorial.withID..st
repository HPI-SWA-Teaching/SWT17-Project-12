initialization
startTutorial: aLesson withID: anInt

	| tutorial |
	
	tutorial := SqueakTutorialLessonWindow new.
	tutorial openInWorld.
	tutorial fullScreen.
	tutorial loadLesson: aLesson.
	
	SqueakTutorialLessonManager lastLessonIndex: anInt.
	
	self delete.