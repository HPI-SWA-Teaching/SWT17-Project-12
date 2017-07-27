as yet unclassified
initialize

	super initialize.
	
	self mouse: SqueakTutorialLessonObjectMouse new.
	self mouse lesson: self.
	self goal: SqueakTutorialGoal new.
	
	self gridX: 1.
	self gridY: 1.
	
	self lessonName: 'Lesson 03 - Parameters'.
	self lessonDescription: 'In the last lesson you used the "timesRepeat" loop to move the mouse to the goal. It is also possible to use self defined methods like "moveDownByAmount: x" which is basically the same as the "timesRepeat" loop but wrapped in your own method', Character cr asString , 'You can look up details about the methods in the help menu below.' , Character cr asString , 'Use as few code lines as possible. Good luck!'.