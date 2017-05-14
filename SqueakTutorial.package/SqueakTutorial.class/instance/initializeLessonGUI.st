initialization
initializeLessonGUI

	self lessonGUI: RectangleMorph new.
	self lessonGUI color: Color white.
	self lessonGUI extent: 390@590.
	self lessonGUI position: 5@5.
	self addMorph: self lessonGUI

	