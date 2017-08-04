initialization
initializeEditGUI

	"lesson description wrapper"
	self codeInputField: PluggableCodePaneSpec new.
	self codeInputField model: Model new;
						setText: ''.
	
	self codeInputField: (ToolBuilder default buildPluggableCodePane: self codeInputField).
	