initialization
openInfoWindow2

	| redMorph greenMorph yellowMorph |
	
	self lessonInfoWindow: PluggableWindowSpec new.
	self lessonInfoWindow extent: 400@400.
	self lessonInfoWindow label: 'InfoWindow'.
	
	self lessonInfoWindow: (ToolBuilder default buildPluggableWindow: self lessonInfoWindow).
	
	"window := SystemWindow labelled: 'Layout'."
	
	redMorph := Morph new.
	self lessonInfoWindow
		addMorph: redMorph
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@100 negated)).
	redMorph color: Color red.
	
	greenMorph := Morph new.
	self lessonInfoWindow
		addMorph: greenMorph
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (0@0 corner: 0@100 negated)).
	greenMorph color: Color green.
	
	yellowMorph := Morph new.
	self lessonInfoWindow
		addMorph: yellowMorph
		fullFrame: (LayoutFrame
			fractions: (0@1 corner: 1@1)
			offsets: (0@100 negated corner: 0@0)).
	yellowMorph color: Color yellow.
		
		
		
		
	
	self lessonInfoWindow openAsIs.
		
	
