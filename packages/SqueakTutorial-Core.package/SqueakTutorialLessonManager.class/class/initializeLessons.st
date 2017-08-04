initializing
initializeLessons
	"initialize the lessons"
	
	self lessons: Dictionary new.
	self addLesson: SqueakTutorialLessonMouseMove new toUnit: 'Squeak Introduction (1 / 2)';
		addLesson: SqueakTutorialLessonLoops new toUnit: 'Squeak Introduction (1 / 2)';
		addLesson: SqueakTutorialLessonParameters new toUnit: 'Squeak Introduction (1 / 2)';
		addLesson: SqueakTutorialLessonMoreLoops new toUnit: 'Squeak Introduction (2 / 2)';
		addLesson: SqueakTutorialLessonObjectAttributes new toUnit: 'Squeak Introduction (2 / 2)';
		addLesson: SqueakTutorialLessonObjectIdentity new toUnit: 'Squeak Introduction (2 / 2)'