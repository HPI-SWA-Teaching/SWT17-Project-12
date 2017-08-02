as yet unclassified
initializeLessons
	
	self lessons: Dictionary new.
	self addLesson: SqueakTutorialLessonMouseMove new toUnit: 'Unit 1'.
	self addLesson: SqueakTutorialLessonLoops new toUnit: 'Unit 1'.
	self addLesson: SqueakTutorialLessonParameters new toUnit: 'Unit 1'.
	self addLesson: SqueakTutorialLessonMoreLoops new toUnit: 'Unit 2'.
	self addLesson: SqueakTutorialLessonObjectAttributes new toUnit: 'Unit 2'.
	self addLesson: SqueakTutorialLessonObjectIdentity new toUnit: 'Unit 2'.
	self addLesson: SqueakTutorialLessonLists new toUnit: 'Unit 3'.