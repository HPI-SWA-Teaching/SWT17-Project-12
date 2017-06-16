code running
runCodeFromInputField
	
	| codeString |
	
	codeString := self editGUI text.
	self currentLesson resetLessonDisplay.
	(Compiler evaluate: codeString for: self currentLesson logged: false).
	(self currentLesson isFinished) ifTrue: [
		self buttonFinish actionSelector: #finishLesson.
		self buttonFinish color: Color green]