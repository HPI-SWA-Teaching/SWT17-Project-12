as yet unclassified
addButtonForLesson: aLesson withLessonNumber: aNumber withExtent: anExtent atPosition: aPosition

	| lessonButton|

	lessonButton := SimpleButtonMorph new.
	lessonButton recolor: (Color fromString: '#3366cc').
	
	lessonButton label: aLesson lessonName.
	
	lessonButton submorphsDo: [:m| m color: (Color white)].
	lessonButton submorphsDo: [:m| m font: (StrikeFont familyName: #BitstreamVeraSans pointSize: 20)].
	lessonButton extent: anExtent.
	lessonButton position: aPosition.
	lessonButton target: self.
	lessonButton actionSelector: #startTutorial:withID:.
	lessonButton arguments: (Array with: aLesson with: aNumber).
	lessonButton borderColor: Color white.
	lessonButton borderWidth: 2.
	
	self lessonScreen addMorph: lessonButton.