initialization
initialize

	super initialize.
	
	self mouse: SqueakTutorialLessonObjectMouse new.
	self mouse lesson: self.
	self goal: SqueakTutorialGoal new.
	
	self gridX: 1.
	self gridY: 1.
	
	self lessonName: 'Lesson 02 - Loops'.
	self lessonDescription: 'Here could be your advertising!'.