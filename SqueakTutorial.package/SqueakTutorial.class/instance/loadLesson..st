lessons
loadLesson: aSqueakTutorialLesson

	"self lessonDescription contents: aSqueakTutorialLesson lessonName , Character cr asString , Character cr asString , aSqueakTutorialLesson lessonDescription."
	
	self lessonDescription setText: aSqueakTutorialLesson lessonName , Character cr asString , Character cr asString , aSqueakTutorialLesson lessonDescription.
	
	"self lessonDescription fontName: 'Atlanta' size: 14.
	self lessonDescription textColor: Color black.
	self lessonDescription wrapFlag: true.
	self lessonDescription readOnly: true."
	
	self currentLesson: aSqueakTutorialLesson.
	aSqueakTutorialLesson initializeLessonDisplay: self lessonGUI.
	
	self currentLessonClassInfos: aSqueakTutorialLesson classInfos.
	(self listClasses isNil) ifFalse: [self listClasses updateList]