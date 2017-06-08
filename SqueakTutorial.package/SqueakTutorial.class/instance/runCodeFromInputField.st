as yet unclassified
runCodeFromInputField
	
	| codeString |
	
	codeString := self editGUI text.
	self currentLesson resetLessonDisplay.
	(Compiler evaluate: codeString for: self currentLesson logged: false).