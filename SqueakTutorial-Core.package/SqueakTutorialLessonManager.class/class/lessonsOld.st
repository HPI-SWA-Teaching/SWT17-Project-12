as yet unclassified
lessonsOld

	"| lessonArray |
	lessonArray := OrderedCollection new.
	lessonArray add: SqueakTutorialLessonMouseMove new.
	lessonArray add: SqueakTutorialLessonLoops new.
	lessonArray add: SqueakTutorialLessonParameters new.
	lessonArray add: SqueakTutorialLessonMoreLoops new.
	lessonArray add: SqueakTutorialLessonLists new.
	lessonArray add: SqueakTutorialLessonObjectAttributes new.
	lessonArray add: SqueakTutorialLessonObjectIdentity new.
	^ lessonArray"
	
	| lessonDictionary |
	lessonDictionary := Dictionary new.
	lessonDictionary at: 'Unit 1' put: nil.