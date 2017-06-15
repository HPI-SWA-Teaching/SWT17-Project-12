initialization
initialize

	super initialize.
	
	self mouse: SqueakTutorialLesson01_Mouse new.
	self mouse currentLesson: self.
	self cheese: SqueakTutorialLesson01_Cheese new.
	self cheese currentLesson: self.
	
	self gridX: 1.
	self gridY: 1.
	
	self lessonName: 'Move the Mouse'.
	self lessonDescription: 'Task 1.1: Feed the mouse with the cheese. Look up the messages for the mouse in the help menu below the morph field. And type your instructions for the mouse in the code field below this window. (Example: mouse up: 10, to move the mouse 10 steps in the upper direction )' , Character cr asString , 'Use as few code lines as possible… And good luck!'.