as yet unclassified
open: aClassInfoDictionary
	
	| windowSpec infoWindow |
	
	infoWindow := self new.
	infoWindow classInfos: aClassInfoDictionary.
	
	windowSpec := PluggableWindowSpec new.
	windowSpec extent: 400@400.
	windowSpec label: 'InfoWindow'.
	windowSpec := (ToolBuilder default buildPluggableWindow: windowSpec).
	
	infoWindow listClasses: PluggableListSpec new.
	infoWindow listClasses hScrollBarPolicy: #never.
	infoWindow listClasses vScrollBarPolicy: #always.
	infoWindow listClasses: (ToolBuilder default buildPluggableList: infoWindow listClasses).
	infoWindow listClasses 	on: infoWindow
					list: #listClassesContents
					selected: #listClassesStartIndex
					changeSelected: #listClassesIndexSelected:
					menu: #empty
					keystroke: #empty.
	
	windowSpec
		addMorph: infoWindow listClasses
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@100 negated)).
	
	infoWindow listMessages: PluggableListSpec new.
	infoWindow listMessages hScrollBarPolicy: #never.
	infoWindow listMessages vScrollBarPolicy: #always.
	infoWindow listMessages: (ToolBuilder default buildPluggableList: infoWindow listMessages).
	infoWindow listMessages 	on: infoWindow
					list: #listMessagesContents
					selected: #listMessagesStartIndex
					changeSelected: #listMessagesIndexSelected:
					menu: #empty
					keystroke: #empty.
	
	windowSpec
		addMorph: infoWindow listMessages
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (0@0 corner: 0@100 negated)).
	
	infoWindow messageDescription: PluggableCodePaneSpec new.
	infoWindow messageDescription readOnly: true.
	infoWindow messageDescription model: Model new.
	infoWindow messageDescription setText: ''.
	
	infoWindow messageDescription: (ToolBuilder default buildPluggableCodePane: infoWindow messageDescription).
	infoWindow messageDescription classNamesContainingIt.
	
	windowSpec
		addMorph: infoWindow messageDescription
		fullFrame: (LayoutFrame
			fractions: (0@1 corner: 1@1)
			offsets: (0@100 negated corner: 0@0)).		
	
	windowSpec openAsIs.
		
	
