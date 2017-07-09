initialization
initializeInspectWindow

	| inspectWindow listObjects listAttributes |
	
	inspectWindow := PluggablePanelSpec new.
	inspectWindow := (ToolBuilder default build: inspectWindow).
					
	listObjects := PluggableListSpec new.
	listObjects hScrollBarPolicy: #never.
	listObjects vScrollBarPolicy: #always.
	listObjects := (ToolBuilder default buildPluggableList: listObjects).
	
	listAttributes := PluggableListSpec new.
	listAttributes hScrollBarPolicy: #never.
	listAttributes vScrollBarPolicy: #always.
	listAttributes := (ToolBuilder default buildPluggableList: listAttributes).
	
	listObjects 	on: self
					list: #listInspectWindowObjects
					selected: #listInspectWindowStartIndex
					changeSelected: #listInspectWindowIndexSelected:
					menu: #empty
					keystroke: #empty.
	
	inspectWindow addMorph: listObjects
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 1@1)
			offsets: (0@0 corner: 0@0)).
			
	inspectWindow addMorph: listAttributes
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (0@0 corner: 0@0)).
			
	self addMorph: inspectWindow
		fullFrame: (LayoutFrame
			fractions: (0@1 corner: 0.5@1)
			offsets: (0@200 negated corner: 0@0)).