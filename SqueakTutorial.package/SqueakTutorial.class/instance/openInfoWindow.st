initialization
openInfoWindow
	
	self lessonInfoWindow: PluggableWindowSpec new.
	self lessonInfoWindow extent: 400@400.
	self lessonInfoWindow label: 'InfoWindow'.
	
	self lessonInfoWindow: (ToolBuilder default buildPluggableWindow: self lessonInfoWindow).
	
	"window := SystemWindow labelled: 'Layout'."
	
	self listClasses: PluggableListSpec new.
	self listClasses hScrollBarPolicy: #never.
	self listClasses vScrollBarPolicy: #always.
	self listClasses: (ToolBuilder default buildPluggableList: self listClasses).
	self listClasses 	on: self
				list: #listClassesContents
				selected: #listClassesStartIndex
				changeSelected: #listClassesIndexSelected:
				menu: #empty
				keystroke: #empty.
	
	self lessonInfoWindow
		addMorph: self listClasses
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@100 negated)).
	
	self listMessages: PluggableListSpec new.
	self listMessages hScrollBarPolicy: #never.
	self listMessages vScrollBarPolicy: #always.
	self listMessages: (ToolBuilder default buildPluggableList: self listMessages).
	self listMessages 	on: self
				list: #listMessagesContents
				selected: #listMessagesStartIndex
				changeSelected: #listMessagesIndexSelected:
				menu: #empty
				keystroke: #empty.
	
	self lessonInfoWindow
		addMorph: self listMessages
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (0@0 corner: 0@100 negated)).
	
	self messageDescription: PluggableCodePaneSpec new.
	self messageDescription readOnly: true.
	self messageDescription model: Model new.
	self messageDescription setText: 'abc'.
	
	self messageDescription: (ToolBuilder default buildPluggableCodePane: self messageDescription).
	
	self lessonInfoWindow
		addMorph: self messageDescription
		fullFrame: (LayoutFrame
			fractions: (0@1 corner: 1@1)
			offsets: (0@100 negated corner: 0@0)).
	
	
	"self messageDescription: PluggableTextMorph new.
	self messageDescription readOnly: true.
	self messageDescription setText: ''.
	
	self lessonInfoWindow
		addMorph: self messageDescription
		fullFrame: (LayoutFrame
			fractions: (0@1 corner: 1@1)
			offsets: (0@100 negated corner: 0@0))."
	
	
		
		
	
	self lessonInfoWindow openAsIs.
		
	
