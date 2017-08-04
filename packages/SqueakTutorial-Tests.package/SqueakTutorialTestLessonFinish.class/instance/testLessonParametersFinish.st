as yet unclassified
testLessonParametersFinish

	| lessonWindow lesson |
	
	lesson := SqueakTutorialLessonParameters new.
	
	lessonWindow := SqueakTutorialLessonWindow new.
	lessonWindow openInWorld.
	lessonWindow fullScreen.
	lessonWindow loadLesson: lesson.
	
	lessonWindow codeInputField setText: 'self mouse moveRightByAmount: 6.' , Character cr asString , 'self mouse moveDownByAmount: 6.' .
	
	lessonWindow runCodeFromInputField.
	
	self assert: ((lesson isFinished) and: (lesson rightCodeUsed: lessonWindow codeInputField text)).