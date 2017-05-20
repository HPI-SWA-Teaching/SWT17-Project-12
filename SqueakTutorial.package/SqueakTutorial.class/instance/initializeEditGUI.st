initialization
initializeEditGUI

	|editGUI buttonGUIBG|
	
	editGUI := PluggableTextMorph new.
	editGUI extent: 390@350.
	editGUI position: 405@155.
	editGUI on: self
			text: #codeWindowText
			accept: #getCodeWindowText:from:
			readSelection: nil
			menu: #menu:.
	
	
	self addMorph: editGUI.
	
	buttonGUIBG := TransformMorph new.
	buttonGUIBG color: Color white.
	buttonGUIBG extent: 390@90.
	buttonGUIBG position: 405@505.
	self addMorph: buttonGUIBG.
	
	self initializeEditButtons: buttonGUIBG.

	