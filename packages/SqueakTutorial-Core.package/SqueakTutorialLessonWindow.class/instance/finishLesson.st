lessons
finishLesson
	"Finishes the current lesson"

	(SqueakTutorialLessonManager lastLessonIndex = (SqueakTutorialLessonManager lessons at: (SqueakTutorialLessonManager currentUnit)) size) ifTrue: [^ self goBackToMenu].
	self loadLesson: SqueakTutorialLessonManager next.