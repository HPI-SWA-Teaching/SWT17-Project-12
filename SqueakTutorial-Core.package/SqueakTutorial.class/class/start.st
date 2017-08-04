as yet unclassified
start

	| startScreen |
	
	SqueakTutorialImageCache initializeCache.
	SqueakTutorialLessonManager initializeUnits.
	SqueakTutorialLessonManager initializeLessons.
	
	startScreen := SqueakTutorialMenu new.
	startScreen openInWorld.
	startScreen fullScreen.
	startScreen showUnitButtons.