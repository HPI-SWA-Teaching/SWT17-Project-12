as yet unclassified
testLessonMoveMouseFinish

	| lessonWindow lesson |
	
	lesson := SqueakTutorialLessonMouseMove new.
	
	lessonWindow := SqueakTutorialLessonWindow new.
	lessonWindow openInWorld.
	lessonWindow fullScreen.
	lessonWindow loadLesson: lesson.
	
	lessonWindow codeInputField setText: 'self mouse moveDownByAmount: ' , (lessonWindow currentLesson goal gridY - lessonWindow currentLesson mouse gridY) , '. self mouse moveRightByAmount: ' , (lessonWindow currentLesson goal gridX - lessonWindow currentLesson mouse gridX).
	
	lessonWindow runCodeFromInputField.
	
	self assert: ((lesson isFinished) and: (lesson rightCodeUsed: lessonWindow codeInputField text)).