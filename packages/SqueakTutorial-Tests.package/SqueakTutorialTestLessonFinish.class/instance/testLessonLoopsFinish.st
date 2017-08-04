as yet unclassified
testLessonLoopsFinish

	| lessonWindow lesson stepsRight stepsDown codeString |
	
	lesson := SqueakTutorialLessonLoops new.
	
	lessonWindow := SqueakTutorialLessonWindow new.
	lessonWindow openInWorld.
	lessonWindow fullScreen.
	lessonWindow loadLesson: lesson.
	
	stepsRight := (lesson goal gridX) - (lesson mouse gridX).
	stepsDown := (lesson goal gridY) - (lesson mouse gridY).
	
	codeString := '1 to: ', stepsRight, ' do: [:a | self mouse moveRight].' , Character cr asString , '1 to: ', stepsDown, ' do: [:a | self mouse moveDown].'.
	lessonWindow codeInputField text: codeString.
	lessonWindow runCodeFromInputField.
	
	self assert: ((self currentLesson isFinished) and: (self currentLesson rightCodeUsed: lessonWindow codeInputField text)).
	