as yet unclassified
testLessonMoreLoopsFinish

	| lessonWindow lesson |
	
	lesson := SqueakTutorialLessonMoreLoops new.
	
	lessonWindow := SqueakTutorialLessonWindow new.
	lessonWindow openInWorld.
	lessonWindow fullScreen.
	lessonWindow loadLesson: lesson.
	
	lessonWindow codeInputField text: '[self mouse lowerBlockFree] whileTrue: [self mouse moveDown].' , Character cr asString , '[self mouse rightBlockFree] whileTrue: [self mouse moveRight].' .
	
	lessonWindow runCodeFromInputField.
	
	self assert: ((self currentLesson isFinished) and: (self currentLesson rightCodeUsed: lessonWindow codeInputField text)).