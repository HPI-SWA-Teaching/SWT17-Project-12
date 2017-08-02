initialization
initialize

	| buttonBack buttonForward |
	
	super initialize.
	
	self paneColor: Color white.
	self lessonScreen: TransformMorph new.
	self lessonScreen color: Color white.
	
	buttonBack := SimpleButtonMorph new.
	buttonForward := SimpleButtonMorph new.
	
	buttonBack label: '<'.
	buttonForward label: '>'.
	
	self addMorph: buttonBack
		fullFrame: (LayoutFrame
			fractions: (0@0.05 corner: 0.08@0.95)
			offsets: (0@0 corner: 0@0)).
	self addMorph: buttonForward
		fullFrame: (LayoutFrame
			fractions: (0.92@0.05 corner: 1@0.95)
			offsets: (0@0 corner: 0@0)).
	self addMorph: self lessonScreen
		fullFrame: (LayoutFrame
			fractions: (0.18@0.05 corner: 0.82@0.95)
			offsets: (0@0 corner: 0@0)).
	
	self currentLessonTab: (SqueakTutorialLessonManager units at: 1).
	
	"TODO unitText := TextMorph new.
	unitText contents: 'UNIT 1'.
	unitText fontName: 'Times New Roman' size: 50.
	
	lessonScreen addMorph: unitText
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0@0)
			offsets: (0@0 corner: 0@0))."
	
	