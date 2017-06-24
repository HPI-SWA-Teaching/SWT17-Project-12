initialization
initialize

	super initialize.
	
	self mouse: SqueakTutorialLesson01_Mouse new.
	self mouse lesson: self.
	self cheese: SqueakTutorialLesson01_Cheese new.
	
	self gridX: 1.
	self gridY: 1.
	
	self lessonName: 'Lesson 01 - Move the Mouse'.
	self lessonDescription: 'Task 1.1: Feed the mouse with cheese. Look up the messages for the mouse in the help menu below and type your instructions for the mouse into the code field below this window. (Example: self mouse moveRight)' , Character cr asString , 'Use as few code lines as possible. Good luck!'.