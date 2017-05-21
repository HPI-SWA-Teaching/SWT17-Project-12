initialization
initializeEditGUI

	
	self editGUI: PluggableTextMorph new.
	"self editGUI extent: 390@350.
	self editGUI position: 405@155."
	self editGUI on: self
			text: #codeWindowText
			accept: #getCodeWindowText:from:
			readSelection: nil
			menu: #menu:.
	
	"self addMorph: editGUI
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0@1)
			offsets: (0@0 corner: 0@0))."
	
	"self addMorph: editGUI."
	
	"self lessonInfoWindow
		addMorph: self listClasses
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@100 negated))."
	
	"self buttonGUIBG: TransformMorph new.
	self buttonGUIBG color: Color white.
	self buttonGUIBG extent: 390@90.
	self buttonGUIBG position: 405@505."
	"self addMorph: self buttonGUIBG."
	
	"self initializeEditButtons: buttonGUIBG."

	