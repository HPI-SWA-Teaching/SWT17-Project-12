initialization
initialize

	super initialize.
	
	self mouse: SqueakTutorialLesson01_Mouse new.
	self mouse lesson: self.
	self goal: SqueakTutorialGoal new.
	
	self gridX: 1.
	self gridY: 1.
	
	self lessonName: 'Lesson 02 - Loops'.
	self lessonDescription: 'In the last lesson you might have noticed, that it is a real struggle to write one line of code for each step the mouse has to go. Use the "timesRepeat" loop to move the mouse to the goal with less lines than in the last lesson.', Character cr asString , 'You can look up details about the loop in the help menu below.' , Character cr asString , 'Use as few code lines as possible. Good luck!'.