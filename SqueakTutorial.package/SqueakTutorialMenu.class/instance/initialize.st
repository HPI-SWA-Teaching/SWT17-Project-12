initialization
initialize
	
	super initialize.
	
	self paneColor: Color white.
	self lessonScreen: TransformMorph new.
	self lessonScreen color: Color white.
	
	self currentUnitID: 1.
	
	self initializeNavigationButtonWithDirection: 'left'.
	self initializeNavigationButtonWithDirection: 'right'.
	
	"self buttonBack actionSelector: #buttonBackClicked:.
	self buttonBack arguments: (Array with: self buttonBack).
	self buttonForward actionSelector: #buttonForwardClicked:.
	self buttonForward arguments: (Array with: self buttonForward)."
	
	self updateButtonBack.
	self updateButtonForward.
	
	self createTitleField.
	
	self addMorph: self titleField
		fullFrame: (LayoutFrame
			fractions: (0.18@0.05 corner: 0.82@0.15)
			offsets: (0@0 corner: 0@0)). 
	
	self addMorph: self buttonBack
		fullFrame: (LayoutFrame
			fractions: (0@0.05 corner: 0.08@0.95)
			offsets: (0@0 corner: 0@0)).
	self addMorph: self buttonForward
		fullFrame: (LayoutFrame
			fractions: (0.92@0.05 corner: 1@0.95)
			offsets: (0@0 corner: 0@0)).
	self addMorph: self lessonScreen
		fullFrame: (LayoutFrame
			fractions: (0.18@0.15 corner: 0.82@0.95)
			offsets: (0@0 corner: 0@0)).
	
	"TODO unitText := TextMorph new.
	unitText contents: 'UNIT 1'.
	unitText fontName: 'Times New Roman' size: 50.
	
	lessonScreen addMorph: unitText
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0@0)
			offsets: (0@0 corner: 0@0))."
	
	