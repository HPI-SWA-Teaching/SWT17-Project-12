as yet unclassified
testLessonMoveMouseFinish

	| lessonWindow lesson |
	
	lesson := SqueakTutorialLessonMouseMove new.
	
	lessonWindow := SqueakTutorialLessonWindow new.
	lessonWindow openInWorld.
	lessonWindow fullScreen.
	lessonWindow loadLesson: lesson.
	
	lessonWindow codeInputField text: 'self mouse moveDownByAmount: ' , (lessonWindow currentLesson goal gridY - lessonWindow currentLesson mouse gridY) , '. self mouse moveDownByAmount: ' , (lessonWindow currentLesson goal gridX - lessonWindow currentLesson mouse gridX).
	
	lessonWindow runCodeFromInputField.
	
	self assert: ((self currentLesson isFinished) and: (self currentLesson rightCodeUsed: lessonWindow codeInputField text)).