initialization
initializeEditGUI

	|editGUI|

	editGUI := RectangleMorph new.
	editGUI color: Color white.
	editGUI extent: 390@590.
	editGUI position: 405@5.
	self addMorph: editGUI

	