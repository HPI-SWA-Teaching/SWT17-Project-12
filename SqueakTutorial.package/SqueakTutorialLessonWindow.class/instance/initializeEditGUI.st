initialization
initializeEditGUI

	"lesson description wrapper"
	self codeInputField: PluggableCodePaneSpec new.
	self codeInputField model: Model new.
	self codeInputField setText: ''.
	
	self codeInputField: (ToolBuilder default buildPluggableCodePane: self codeInputField).
	