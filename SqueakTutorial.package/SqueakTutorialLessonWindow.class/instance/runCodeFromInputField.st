code running
runCodeFromInputField
	
	| codeString |
	
	codeString := self codeInputField text asString.
	self currentLesson resetLessonDisplay.
	
	[
		(Compiler evaluate: codeString for: self currentLesson logged: false).
		((self currentLesson isFinished) and: (self currentLesson rightCodeUsed: codeString)) ifTrue: [self enableFinishButton]. 
	] fork.