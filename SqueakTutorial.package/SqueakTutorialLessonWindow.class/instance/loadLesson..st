lessons
loadLesson: aSqueakTutorialLesson

	self lessonDescription setText: aSqueakTutorialLesson lessonName , Character cr asString , Character cr asString , aSqueakTutorialLesson lessonDescription.
	
	self buttonFinish actionSelector: nil;
					color: Color gray.
	self codeInputField setText: ''.
	
	"self lessonDescription wrapFlag: true."
	"self lessonDescription font: 'Atlanta'. - Funktioniert noch nicht"
	self lessonDescription setTextColor: Color white.
	self lessonDescription readOnly: true.
	
	self currentLesson: aSqueakTutorialLesson.
	self currentLesson squeakTutorial: self.
	self currentLesson lessonWindow: self.
	aSqueakTutorialLesson initializeLessonDisplay: self.
	
	self label: self currentLesson lessonName.
	"(self grid cellAt: 1@1) addMorph: aSqueakTutorialLesson mouse."
	
	"(self listClasses isNil) ifFalse: [self listClasses updateList]"