code running
runCodeFromInputField
	
	| codeString |
	
	codeString := self codeInputField text asString.
	self currentLesson resetLessonDisplay.
	
	self currentCodeRunProcess: [
		"disable run button -> show stop button"
		self buttonRun color: Color gray.
		self buttonRun actionSelector: #stopCodeExecution.
		
		(Compiler evaluate: codeString for: self currentLesson logged: false).
		((self currentLesson isFinished) and: (self currentLesson rightCodeUsed: codeString)) ifTrue: [self enableFinishButton].
		
		self buttonRun color: (Color r: 0.4 g: 0.8 b: 0.6).
		self buttonRun actionSelector: #runCodeFromInputField.
		self currentCodeRunProcess: nil.
	] fork.