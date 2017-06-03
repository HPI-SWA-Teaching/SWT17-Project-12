initialization
initialize

	super initialize.
	
	self mouse: SqueakTutorialLesson01_Mouse new.
	
	self lessonName: 'Move the Mouse'.
	self lessonDescription: 'Task 1.1: Feed the mouse with the cheese.' , Character cr asString , 'Look up the messages for the mouse in the help menu below the morph field.' , Character cr asString , 'And type your instructions for the mouse in the code field below this window.' , Character cr asString , '(Example: mouse up: 10, to move the mouse 10 steps in the upper direction )' , Character cr asString , 'Use as few code lines as possible… And good luck!'.