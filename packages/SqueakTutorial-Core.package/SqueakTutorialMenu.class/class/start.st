starting
start
	"start tutorial by opening menu"

	| startScreen |
	
	SqueakTutorialImageCache initializeCache.
	SqueakTutorialLessonManager initializeUnits.
	SqueakTutorialLessonManager initializeLessons.
	
	startScreen := self new.
	startScreen openInWorld.
	startScreen fullScreen.
	startScreen showUnitButtons.
	
	^ startScreen