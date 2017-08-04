as yet unclassified
initializeWindowSpec

	| windowSpec testButton |

	windowSpec := PluggableDialogSpec new.
	windowSpec model: self;
		title: 'Info Window';
		extent: 400@400;
		autoCancel: true.
	windowSpec children: OrderedCollection new.
	windowSpec buttons: OrderedCollection new.
	
	testButton := PluggableButtonSpec new.
	testButton label: 'Close'.
	windowSpec buttons add: testButton.
	
	windowSpec := (ToolBuilder default buildPluggableDialog: windowSpec).
	
	windowSpec paneMorph
		addMorph: self listClasses
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@100 negated)).
	windowSpec paneMorph
		addMorph: self listMessages
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (0@0 corner: 0@100 negated)).
	windowSpec paneMorph
		addMorph: self messageDescription
		fullFrame: (LayoutFrame
			fractions: (0@1 corner: 1@1)
			offsets: (0@100 negated corner: 0@0)).
	
	windowSpec openCenteredInWorld.
	windowSpec flash.
	
	self currentHand mouseFocus: windowSpec.