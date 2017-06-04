lessons
loadLesson: aSqueakTutorialLesson

	self lessonDescription setText: aSqueakTutorialLesson lessonName , Character cr asString , Character cr asString , aSqueakTutorialLesson lessonDescription.
	
	"self lessonDescription wrapFlag: true."
	"self lessonDescription font: 'Atlanta'. - Funktioniert noch nicht"
	self lessonDescription setTextColor: Color white.
	self lessonDescription readOnly: true.
	
	self currentLesson: aSqueakTutorialLesson.
	aSqueakTutorialLesson initializeLessonDisplay: self lessonGUI.
	
	self currentLessonClassInfos: aSqueakTutorialLesson classInfos.
	(self listClasses isNil) ifFalse: [self listClasses updateList]