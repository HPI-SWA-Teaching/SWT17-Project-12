as yet unclassified
start

	| startScreen |
	
	SqueakTutorialImageCache initializeCache.
	startScreen := SqueakTutorialMenu new.
	startScreen openInWorld.
	startScreen fullScreen.