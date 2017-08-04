initialization
startTutorial: aLesson withID: anInt

	| tutorial |
	
	tutorial := SqueakTutorialLessonWindow new.
	tutorial openInWorld.
	tutorial fullScreen.
	tutorial loadLesson: aLesson.
	
	SqueakTutorialLessonManager currentUnit: (SqueakTutorialLessonManager units at: self currentUnitID).
	SqueakTutorialLessonManager lastLessonIndex: anInt.
	
	self delete.