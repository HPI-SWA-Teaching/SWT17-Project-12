code running
runCodeFromInputField
	
	| codeString |
	
	codeString := self codeInputField text asString.
	self currentLesson resetLessonDisplay.
	
	self currentCodeRunProcess: [
		"disable run button -> show stop button"
		self buttonRun actionSelector: #stopCodeExecution.
		(self buttonRun submorphs at: 1) image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'stop.png') fullName) scaledToSize: 50@50).
		
		(Compiler evaluate: codeString for: self currentLesson logged: false).
		((self currentLesson isFinished) and: (self currentLesson rightCodeUsed: codeString)) ifTrue: [self enableFinishButton].
		
		self buttonRun actionSelector: #runCodeFromInputField.
		(self buttonRun submorphs at: 1) image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'run.png') fullName) scaledToSize: 50@50).
		self currentCodeRunProcess: nil.
	] fork.