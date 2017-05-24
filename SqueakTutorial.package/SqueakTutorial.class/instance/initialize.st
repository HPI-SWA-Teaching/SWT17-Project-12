initialization
initialize

	| simpleLesson helpButton |
	
	"foo"

	super initialize.
	self extent: 800@600.
	self initializeLessonGUI.
	self initializeEditGUI.
	self initializeEditButtons.
	
	"initialize help button"
	helpButton := SimpleButtonMorph new.
	helpButton label: '?'.
	helpButton extent: 20@20.
	helpButton position: 770@130.
	helpButton target: self;
				actionSelector: #openInfoWindow.
	"self addMorph: helpButton
		fullFrame: (LayoutFrame
			fractions: (1@0 corner: 1@1)
			offsets: (20@20 corner: 0@0))."
	self addMorph: self lessonDescriptionBackground
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@0)
			offsets: (0@0 corner: 0@200)).
	self addMorph: editGUI
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			"offsets: (0@200 corner: 0@90 negated))."
			offsets: (0@200 corner: 0@140 negated)).
	
	self addMorph: helpButton
		fullFrame: (LayoutFrame
			fractions: (0.5@1 corner: 1@1)
			offsets: (0@140 negated corner: 0@90 negated)).
	
	self addMorph: self buttonReset
		fullFrame: (LayoutFrame
			fractions: (0.5@1 corner: 0.75@1)
			offsets: (0@90 negated corner: 0@0)).
	self addMorph: self buttonFinish
		fullFrame: (LayoutFrame
			fractions: (0.75@1 corner: 1@1)
			offsets: (0@90 negated corner: 0@0)).
	self addMorph: self lessonGUI
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@0)).
	
	
	codeWindowText := ''.
	
	self mouseMorph: ImageMorph new.
	self mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse.png') fullName) scaledToSize: 50@50).
	self mouseMorph extent: 5@5.
	self lessonGUI addMorph: self mouseMorph.
	
	simpleLesson := SqueakTutorialLesson lessonName: 'LESSON 1' lessonDescription: 'This is the first lesson of this tutorial! ...'.
	self loadLesson: simpleLesson.