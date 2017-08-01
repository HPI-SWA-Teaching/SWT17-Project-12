code running
stopCodeExecution
	
	self currentCodeRunProcess ifNotNil: [
		self currentCodeRunProcess terminate.
		self buttonRun color: (Color r: 0.4 g: 0.8 b: 0.6).
		self buttonRun actionSelector: #runCodeFromInputField]