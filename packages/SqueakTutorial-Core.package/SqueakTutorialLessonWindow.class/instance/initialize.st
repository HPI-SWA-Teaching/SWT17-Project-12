initialization
initialize
	"Initializes the lesson window"

	super initialize.
	
	self paneColor: Color white.
	
	self
		initializeLessonGUI;
		initializeCodeInputField;
		initializeButtons.
	
	self addMorph: self lessonDescription
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@0)
			offsets: (0@0 corner: 0@200)).
			
	self addMorph: self codeInputField
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (0@200 corner: 0@90 negated)).
	
	self addMorph: self buttonReset
		fullFrame: (LayoutFrame
			fractions: (0.5@1 corner: 0.6@1)
			offsets: (0@90 negated corner: 0@0)).

	self addMorph: self buttonRun
		fullFrame: (LayoutFrame
			fractions: (0.6@1 corner: 0.7@1)
			offsets: (0@90 negated corner: 0@0)).
			
	self addMorph: self buttonHelp
		fullFrame: (LayoutFrame
			fractions: (0.7@1 corner: 0.8@1)
			offsets: (0@90 negated corner: 0@0)).
			
	self addMorph: self buttonBack
		fullFrame: (LayoutFrame
			fractions: (0.8@1 corner: 0.9@1)
			offsets: (0@90 negated corner: 0@0)).
			
	self addMorph: self buttonFinish
		fullFrame: (LayoutFrame
			fractions: (0.9@1 corner: 1@1)
			offsets: (0@90 negated corner: 0@0)).
	
	self addMorph: self lessonDisplay
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@0)).
			
			
	