code running
runCodeFromInputField
	"Sends the user input through the compiler and displays another icon instead of the run button while the code is being processed"
	
	| codeString |
	
	codeString := self codeInputField text asString.
	self currentLesson resetLessonDisplay.
	
	self currentCodeRunProcess: [
		self buttonRun actionSelector: #stopCodeExecution.
		(self buttonRun submorphs at: 1) image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'stop.png') fullName) scaledToSize: 50@50).
		
		(Compiler evaluate: codeString for: self currentLesson logged: false).
		((self currentLesson isFinished) and: (self currentLesson rightCodeUsed: codeString)) ifTrue: [self enableFinishButton].
		
		self buttonRun actionSelector: #runCodeFromInputField.
		(self buttonRun submorphs at: 1) image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'run.png') fullName) scaledToSize: 50@50).
		self currentCodeRunProcess: nil.
	] fork.