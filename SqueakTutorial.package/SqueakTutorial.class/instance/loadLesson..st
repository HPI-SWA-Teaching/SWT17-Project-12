lessons
loadLesson: aSqueakTutorialLesson

	self lessonDescription contents: aSqueakTutorialLesson lessonName , Character cr asString , Character cr asString , aSqueakTutorialLesson lessonDescription.
	self lessonDescription fontName: 'Atlanta' size: 14.
	"self lessonDescription autoFit: true."
	"self lessonDescription centered."
	self lessonDescription textColor: Color black.
	self lessonDescription wrapFlag: true.
	self lessonDescription readOnly: true.
	"self lessonDescription string: aSqueakTutorialLesson lessonName , Character cr asString , Character cr asString , aSqueakTutorialLesson lessonDescription fontName: 'BitstreamVeraSans' size: 50."
	self currentLessonClassInfos: aSqueakTutorialLesson classInfos.
	(self listClasses isNil) ifFalse: [self listClasses updateList]