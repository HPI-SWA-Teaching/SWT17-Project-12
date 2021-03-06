initialization
addAllUIElements
	"Shows all the UI Elements on right positions (adds them as submorphs)"
	
	self addMorph: self titleField
		fullFrame: (LayoutFrame
			fractions: (0.18@0.05 corner: 0.82@0.15)
			offsets: (0@0 corner: 0@0));
	addMorph: self unitTitleField
		fullFrame: (LayoutFrame
			fractions: (0.18@0.15 corner: 0.82@0.25)
			offsets: (0@0 corner: 0@0)). 
	
	self addMorph: self buttonBack
		fullFrame: (LayoutFrame
			fractions: (0@0.15 corner: 0.08@0.95)
			offsets: (0@0 corner: 0@0));
	addMorph: self buttonForward
		fullFrame: (LayoutFrame
			fractions: (0.92@0.15 corner: 1@0.95)
			offsets: (0@0 corner: 0@0)).
			
	self addMorph: self lessonScreen
		fullFrame: (LayoutFrame
			fractions: (0.18@0.25 corner: 0.82@0.95)
			offsets: (0@0 corner: 0@0)).