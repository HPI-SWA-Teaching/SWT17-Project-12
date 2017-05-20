initialization
openInfoWindow

	| listClasses listMessages messageDescription |
	
	self lessonInfoWindow: PluggableWindowSpec new.
	self lessonInfoWindow extent: 400@400.
	self lessonInfoWindow label: 'InfoWindow'.
	
	self lessonInfoWindow: (ToolBuilder default buildPluggableWindow: self lessonInfoWindow).
	
	"window := SystemWindow labelled: 'Layout'."
	
	listClasses := PluggableListSpec new.
	listClasses hScrollBarPolicy: #never.
	listClasses vScrollBarPolicy: #always.
	listClasses := ToolBuilder default buildPluggableList: listClasses.
	
	self lessonInfoWindow
		addMorph: listClasses
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@100 negated)).
	
	listMessages := PluggableListSpec new.
	listMessages hScrollBarPolicy: #never.
	listMessages vScrollBarPolicy: #always.
	listMessages := ToolBuilder default buildPluggableList: listMessages.
	
	self lessonInfoWindow
		addMorph: listMessages
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (0@0 corner: 0@100 negated)).
	
	messageDescription := PluggableTextMorph new.
	messageDescription readOnly: true.
	messageDescription setText: ''.
	
	self lessonInfoWindow
		addMorph: messageDescription
		fullFrame: (LayoutFrame
			fractions: (0@1 corner: 1@1)
			offsets: (0@100 negated corner: 0@0)).
	
	
		
		
	
	self lessonInfoWindow openAsIs.
		
	
