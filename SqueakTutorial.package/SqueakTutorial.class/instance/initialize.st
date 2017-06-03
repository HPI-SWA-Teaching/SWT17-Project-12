initialization
initialize

	| helpButton |
	
	"foo"
	
	Transcript show: self class sharedPools.

	super initialize.
	self extent: 800@600.
	self initializeLessonGUI.
	self initializeEditGUI.
	self initializeEditButtons.
	"self fullScreen."
	
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
			"Hab den Offset rausgenommen, weil der für komisches Verhalten des TextMorphs gesorgt hat - Jakob"
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
	
	
	codeWindowText := ''.
	
	"self mouseMorph: ImageMorph new.
	self mouseMorph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'mouse.png') fullName) scaledToSize: 50@50).
	self mouseMorph extent: 5@5.
	self lessonGUI addMorph: self mouseMorph."
	
	"simpleLesson := SqueakTutorialLesson lessonName: 'Move the Mouse' lessonDescription: 'Task 1.1: Feed the mouse with the cheese.' , Character cr asString , 'Look up the messages for the mouse in the help menu below the morph field.' , Character cr asString , 'And type your instructions for the mouse in the code field below this window.' , Character cr asString , '(Example: mouse up: 10, to move the mouse 10 steps in the upper direction )' , Character cr asString , 'Use as few code lines as possible… And good luck!'."
	self loadLesson: SqueakTutorialLesson01_MouseMove new.