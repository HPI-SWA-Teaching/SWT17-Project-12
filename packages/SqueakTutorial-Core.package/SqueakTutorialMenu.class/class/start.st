starting
start
	"start tutorial by opening menu"

	SqueakTutorialImageCache initializeCache.
	SqueakTutorialLessonManager initializeUnits.
	SqueakTutorialLessonManager initializeLessons.
	
	self show.
	
	