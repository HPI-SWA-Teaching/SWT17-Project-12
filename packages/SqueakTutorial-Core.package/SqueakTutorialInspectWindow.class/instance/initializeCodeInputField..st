initialization
initializeCodeInputField: anObject
	"Inititlize the instance of the code input field at the bottom of the inspect window"

	| testModel |
	
	testModel := SqueakTutorialInspectWindowCodeModel new.
	testModel doItReceiver: anObject.
	
	self codeInputField: PluggableCodePaneSpec new.
	self codeInputField model: testModel;
						setText: ''.
	self codeInputField: (ToolBuilder default buildPluggableCodePane: self codeInputField).
	
	