lessons
finishLesson

	(SqueakTutorialLessonManager lastLessonIndex = (SqueakTutorialLessonManager lessons at: (SqueakTutorialLessonManager currentUnit)) size) ifTrue: [^ self goBackToMenu].
	self loadLesson: SqueakTutorialLessonManager next.
	

	"SqueakTutorial start.
	self delete."