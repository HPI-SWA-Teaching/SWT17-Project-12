initialization
initializeEditGUI

	|editGUI buttonGUIBG|

	editGUI := PluggableTextMorph new.
	editGUI color: Color white.
	editGUI extent: 390@350.
	editGUI position: 405@155.
	self addMorph: editGUI.
	"editGUI := PluggableCodePaneSpec new.
	editGUI model: self.
	editGUI setText: 'Insert code here'.
	editGUI := ToolBuilder default buildPluggableCodePane: editGUI.
	self addMorph: editGUI.
	editGUI extent: 390@350.
	editGUI position: 405@155."
	
	buttonGUIBG := TransformMorph new.
	buttonGUIBG color: Color white.
	buttonGUIBG extent: 390@90.
	buttonGUIBG position: 405@505.
	self addMorph: buttonGUIBG.
	
	self initializeEditButtons: buttonGUIBG.

	