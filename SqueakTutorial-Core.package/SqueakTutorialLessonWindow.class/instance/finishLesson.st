lessons
finishLesson

	(SqueakTutorialLessonManager lastLessonIndex = SqueakTutorialLessonManager lessons size) ifTrue: [^ self goBackToMenu].
	self loadLesson: SqueakTutorialLessonManager next.
	

	"SqueakTutorial start.
	self delete."