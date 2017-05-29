initialization
initializeEditButtons
	
	self buttonReset: SimpleButtonMorph new.
	self buttonFinish: SimpleButtonMorph new.
	
	self buttonReset label: 'RESET'.
	self buttonFinish label: 'FINISH'.
	
	"buttonReset extent: 195@90.
	buttonFinish extent: 195@90.
	
	buttonReset position: 0@0.
	buttonFinish position: 195@0."
	
	"self buttonGUIBG
		addMorph: buttonFinish
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (0@0 corner: 0@0)).
	self buttonGUIBG
		addMorph: buttonReset
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@0))."
	
	
	"editButtonsBackground addMorph: buttonReset.
	editButtonsBackground addMorph: buttonFinish."