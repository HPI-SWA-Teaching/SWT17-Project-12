initialization
initializeEditGUI

	self editGUI: PluggableCodePaneSpec new.
	self editGUI model: Model new.
	self editGUI setText: ''.
	
	self editGUI: (ToolBuilder default buildPluggableCodePane: self editGUI).

	
	"self editGUI: PluggableTextMorph new."
	"self editGUI on: self
			text: #codeWindowText
			accept: #getCodeWindowText:from:
			readSelection: nil
			menu: #menu:."

	