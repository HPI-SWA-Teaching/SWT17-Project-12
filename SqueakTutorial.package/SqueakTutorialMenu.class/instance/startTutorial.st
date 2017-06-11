as yet unclassified
startTutorial

	| tutorial |
	
	tutorial := SqueakTutorial new.
	tutorial openInWorld.
	tutorial fullScreen.
	tutorial loadLesson1.
	
	self delete.