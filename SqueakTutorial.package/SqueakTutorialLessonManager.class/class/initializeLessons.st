as yet unclassified
initializeLessons
	
	self lessons: Dictionary new.
	self addLesson: SqueakTutorialLessonMouseMove new toUnit: 'Squeak Introduction (1 / 2)'.
	self addLesson: SqueakTutorialLessonLoops new toUnit: 'Squeak Introduction (1 / 2)'.
	self addLesson: SqueakTutorialLessonParameters new toUnit: 'Squeak Introduction (1 / 2)'.
	self addLesson: SqueakTutorialLessonMoreLoops new toUnit: 'Squeak Introduction (2 / 2)'.
	self addLesson: SqueakTutorialLessonObjectAttributes new toUnit: 'Squeak Introduction (2 / 2)'.
	self addLesson: SqueakTutorialLessonObjectIdentity new toUnit: 'Squeak Introduction (2 / 2)'.
	self addLesson: SqueakTutorialLessonLists new toUnit: 'Unit 3'.