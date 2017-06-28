initialization
initialize

	super initialize.
	
	self mouse: SqueakTutorialLesson01_Mouse new.
	self mouse lesson: self.
	self goal: SqueakTutorialGoal new.
	
	self gridX: 0.
	self gridY: 0.
	
	self lessonName: 'Lesson 01 - Move the Mouse'.
	self lessonDescription: 'Move the mouse to the goal. Look up the messages for the mouse in the help menu below and type your instructions for the mouse into the code field below this window. (Example: self mouse moveRight)' , Character cr asString , 'Use as few code lines as possible. Good luck!'.