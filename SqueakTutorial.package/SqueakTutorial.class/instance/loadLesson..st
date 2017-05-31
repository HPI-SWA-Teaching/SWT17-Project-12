lessons
loadLesson: aSqueakTutorialLesson

	self lessonDescription contents: aSqueakTutorialLesson lessonName , Character cr asString , Character cr asString , aSqueakTutorialLesson lessonDescription.
	
	self lessonDescription fontName: 'Atlanta' size: 14.
	self lessonDescription textColor: Color black.
	self lessonDescription wrapFlag: true.
	self lessonDescription readOnly: true.
	
	
	self currentLesson: aSqueakTutorialLesson.
	aSqueakTutorialLesson mouseMorph: ImageMorph new.
	aSqueakTutorialLesson mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse.png') fullName) scaledToSize: 50@50).
	aSqueakTutorialLesson mouseMorph extent: 5@5.
	self lessonGUI addMorph: aSqueakTutorialLesson mouseMorph.
	
	self currentLessonClassInfos: aSqueakTutorialLesson classInfos.
	(self listClasses isNil) ifFalse: [self listClasses updateList]