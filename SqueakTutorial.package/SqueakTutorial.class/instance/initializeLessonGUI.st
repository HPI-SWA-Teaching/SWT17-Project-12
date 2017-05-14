initialization
initializeLessonGUI

	self lessonGUI: TransformMorph new.
	self lessonGUI borderColor: Color black.
	self lessonGUI borderWidth: 2.
	self lessonGUI color: Color white.
	self lessonGUI extent: 390@590.
	self lessonGUI position: 5@5.
	self addMorph: self lessonGUI

	