starting
start
	"start tutorial by opening menu"

	| startScreen |
	
	SqueakTutorialImageCache initializeCache.
	SqueakTutorialLessonManager initializeUnits.
	SqueakTutorialLessonManager initializeLessons.
	
	startScreen := SqueakTutorialMenu new.
	startScreen openInWorld.
	startScreen fullScreen.
	startScreen showUnitButtons.