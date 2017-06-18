initialization
initialize

	| button buttonCount startScreen |
	
	super initialize.
	
	buttonCount := 0.
	startScreen := TransformMorph new.
	startScreen color: Color white.
	
	self addMorph: startScreen
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 1@1)
			offsets: (0@0 corner: 0@0)).
	
	SqueakTutorialLessonManager lessons do: [ :lesson |
		button := SimpleButtonMorph new.
		button target: self.
		button actionSelector: #startTutorial:.
		button arguments: (Array with: lesson).
		button label: lesson lessonName.
		button extent: 300@50.
		button position: 100@(100 + (buttonCount * 75)).
		buttonCount := buttonCount + 1.
		startScreen addMorph: button].
			
	

	"startButton := SimpleButtonMorph new.
	startButton label: 'Start Tutorial';
				target: self;
				actionSelector: #startTutorial.
	
	self addMorph: startScreen
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 1@1)
			offsets: (0@0 corner: 0@0)).
	
	self addMorph: startButton
		fullFrame: (LayoutFrame
			fractions: (0.5@0.5 corner: 0.5@0.5)
			offsets: (-125@(-80) corner: 125@40))."