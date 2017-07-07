initialization
initialize

	super initialize.
	
	self mouse: SqueakTutorialLesson01_Mouse new.
	self mouse lesson: self.
	self goal: SqueakTutorialGoal new.
	self obstaclePositions: (#(2@3, 2@1, 2@2) asOrderedCollection).
	
	self gridX: 1.
	self gridY: 1.
	
	self lessonName: 'Lesson 03 - More Loops'.
	self lessonDescription: 'This time you have to use so called Conditional Loops. Use the "whileTrue" loop and the boolean method "frontBlocked", for taking the mouse to the goal. Boolean methods are methods, that return just True or False, when they get called.', Character cr asString , 'You can look up details about the new loop and the new boolean method in the help menu below.' , Character cr asString , 'Use as few code lines as possible. Good luck!'.