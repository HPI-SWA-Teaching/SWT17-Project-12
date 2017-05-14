initialization
initializeEditGUI

	|editGUI buttonGUIBG|

	editGUI := RectangleMorph new.
	editGUI color: Color white.
	editGUI extent: 390@500.
	editGUI position: 405@5.
	self addMorph: editGUI.
	
	buttonGUIBG := TransformMorph new.
	buttonGUIBG color: Color white.
	buttonGUIBG extent: 390@90.
	buttonGUIBG position: 405@505.
	self addMorph: buttonGUIBG.
	
	self initializeEditButtons: buttonGUIBG.

	