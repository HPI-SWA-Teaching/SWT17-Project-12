initialization
initialize

	| helpButton |
	
	"self grid: SqueakTutorialGrid new."
	
	
	"foo"
	
	super initialize.
	
	self paneColor: Color white.
	
	self initializeLessonGUI.
	self initializeEditGUI.
	self initializeEditButtons.
	"self fullScreen."
	
	"initialize help button"
	helpButton := SimpleButtonMorph new.
	helpButton label: '?'.
	helpButton target: self;
				actionSelector: #openInfoWindow.
	"self addMorph: helpButton
		fullFrame: (LayoutFrame
			fractions: (1@0 corner: 1@1)
			offsets: (20@20 corner: 0@0))."
	self addMorph: self lessonDescription
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@0)
			offsets: (0@0 corner: 0@200)).
	self addMorph: editGUI
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (0@200 corner: 0@140 negated)).
	
	self addMorph: helpButton
		fullFrame: (LayoutFrame
			fractions: (0.5@1 corner: 1@1)
			offsets: (0@140 negated corner: 0@90 negated)).
	
	self addMorph: self buttonReset
		fullFrame: (LayoutFrame
			fractions: (0.5@1 corner: 0.666@1)
			offsets: (0@90 negated corner: 0@0)).
	self addMorph: self buttonRun
		fullFrame: (LayoutFrame
			fractions: (0.666@1 corner: 0.833@1)
			offsets: (0@90 negated corner: 0@0)).
	self addMorph: self buttonFinish
		fullFrame: (LayoutFrame
			fractions: (0.833@1 corner: 1@1)
			offsets: (0@90 negated corner: 0@0)).
	self addMorph: self lessonGUI
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@0)).
			
			
	