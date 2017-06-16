initialization
initializeEditGUI

	"lesson description wrapper"
	self editGUI: PluggableCodePaneSpec new.
	self editGUI model: Model new.
	self editGUI setText: ''.
	
	self editGUI: (ToolBuilder default buildPluggableCodePane: self editGUI).
	