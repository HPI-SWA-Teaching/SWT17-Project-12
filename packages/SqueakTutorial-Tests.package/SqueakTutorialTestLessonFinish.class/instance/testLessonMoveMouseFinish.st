as yet unclassified
testLessonMoveMouseFinish

	| lessonWindow lesson |
	
	lesson := SqueakTutorialLessonMouseMove new.
	
	lessonWindow := SqueakTutorialLessonWindow new.
	lessonWindow openInWorld.
	lessonWindow fullScreen.
	lessonWindow loadLesson: lesson.
	
	lessonWindow codeInputField text: 'self mouse moveDown.'.
	
	"TODO"
	