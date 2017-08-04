as yet unclassified
open: aClassInfoDictionary
	
	| windowSpec infoWindow testButton background |
	
	infoWindow := self new.
	infoWindow classInfos: aClassInfoDictionary.
	
	windowSpec := PluggableDialogSpec new;
		model: self;
		title: 'Info Window';
		extent: 400@400;
		autoCancel: true.
	windowSpec children: OrderedCollection new.
	windowSpec buttons: OrderedCollection new.
	
	testButton := PluggableButtonSpec new.
	testButton label: 'Close'.
	windowSpec buttons add: testButton.
	
	background := PluggablePanelSpec new.
	
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
	
	infoWindow messageDescription: PluggableCodePaneSpec new.
	infoWindow messageDescription readOnly: true.
	infoWindow messageDescription model: Model new.
	infoWindow messageDescription setText: ''.
	infoWindow messageDescription: (ToolBuilder default buildPluggableCodePane: infoWindow messageDescription).
			
	
	windowSpec := (ToolBuilder default buildPluggableDialog: windowSpec).
	
	windowSpec paneMorph
		addMorph: infoWindow listClasses
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@100 negated)).
	windowSpec paneMorph
		addMorph: infoWindow listMessages
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (0@0 corner: 0@100 negated)).
	windowSpec paneMorph
		addMorph: infoWindow messageDescription
		fullFrame: (LayoutFrame
			fractions: (0@1 corner: 1@1)
			offsets: (0@100 negated corner: 0@0)).
	
	windowSpec openCenteredInWorld.
	
	self currentHand mouseFocus: windowSpec.
	
	windowSpec flash.
		
	
