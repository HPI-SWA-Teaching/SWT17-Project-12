code running
stopCodeExecution
	"Stops the current execution of code"
	
	self currentCodeRunProcess ifNotNil: [
		self currentCodeRunProcess terminate.
		(self buttonRun submorphs at: 1) image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'SqueakTutorialMedia/run.png') fullName) scaledToSize: 50@50).
		self buttonRun actionSelector: #runCodeFromInputField]