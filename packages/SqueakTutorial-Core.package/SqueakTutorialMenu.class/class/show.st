starting
show

	| startScreen |
	
	startScreen := self new.
	startScreen openInWorld.
	startScreen fullScreen.
	startScreen addUnitButtons.
	
	^ startScreen