lessons
loadLesson: aSqueakTutorialLesson

	self lessonDescription contents: aSqueakTutorialLesson lessonName , Character cr asString , Character cr asString , aSqueakTutorialLesson lessonDescription.
	
	self lessonDescription fontName: 'Atlanta' size: 24.
	"self lessonDescription autoFit: true."
	self lessonDescription centered.
	self lessonDescription textColor: Color red.
	self lessonDescription wrapFlag: true.
	self lessonDescription readOnly: true.
	
	self currentLesson: aSqueakTutorialLesson.
	
	aSqueakTutorialLesson mouseMorph: ImageMorph new.
	aSqueakTutorialLesson mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse.png') fullName) scaledToSize: 50@50).
	aSqueakTutorialLesson mouseMorph extent: 5@5.
	self lessonGUI addMorph: aSqueakTutorialLesson mouseMorph.
	
	    "self lessonDescription string: aSqueakTutorialLesson lessonName , Character cr asString , Character cr asString , aSqueakTutorialLesson lessonDescription fontName: 'BitstreamVeraSans' size: 50."

	
	self currentLessonClassInfos: aSqueakTutorialLesson classInfos.
	(self listClasses isNil) ifFalse: [self listClasses updateList]