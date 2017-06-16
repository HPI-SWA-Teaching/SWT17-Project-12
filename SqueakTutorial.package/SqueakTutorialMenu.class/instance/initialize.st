as yet unclassified
initialize

	| startButton startScreen |
	
	super initialize.
	
	startScreen := TransformMorph new.
	startScreen color: Color white.

	startButton := SimpleButtonMorph new.
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
			offsets: (-125@(-80) corner: 125@40)).