initialization
addComponents: window
	"Add the components to the inspect window"

	window
		addMorph: self listAttributes
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@100 negated)).
	
	window
		addMorph: self outputField
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (0@0 corner: 0@100 negated)).
			
	window
		addMorph: self codeInputField
		fullFrame: (LayoutFrame
			fractions: (0@1 corner: 1@1)
			offsets: (0@100 negated corner: 0@0)).