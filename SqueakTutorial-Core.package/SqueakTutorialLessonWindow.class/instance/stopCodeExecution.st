code running
stopCodeExecution
	
	self currentCodeRunProcess ifNotNil: [
		self currentCodeRunProcess terminate.
		(self buttonRun submorphs at: 1) image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'run.png') fullName) scaledToSize: 50@50).
		self buttonRun actionSelector: #runCodeFromInputField]