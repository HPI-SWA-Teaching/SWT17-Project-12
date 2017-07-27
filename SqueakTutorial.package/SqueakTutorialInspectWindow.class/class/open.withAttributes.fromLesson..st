as yet unclassified
open: anObject withAttributes: anAttributesDictionary fromLesson: aLesson

	| windowSpec inspectWindow testModel |
	
	inspectWindow := self new.
	inspectWindow attributesDict: anAttributesDictionary.
	inspectWindow lesson: aLesson.
	
	windowSpec := PluggableWindowSpec new.
	windowSpec extent: 400@400.
	windowSpec label: 'Inspect Window'.
	windowSpec := (ToolBuilder default buildPluggableWindow: windowSpec).
	
	inspectWindow listAttributes: PluggableListSpec new.
	inspectWindow listAttributes hScrollBarPolicy: #never.
	inspectWindow listAttributes vScrollBarPolicy: #always.
	inspectWindow listAttributes: (ToolBuilder default buildPluggableList: inspectWindow listAttributes).
	inspectWindow listAttributes on: inspectWindow
							list: #listAttributesContent
							selected: #listAttributesStartIndex
							changeSelected: #listAttributesIndexSelected:
							menu: #empty
							keystroke: #empty.
	
	windowSpec
		addMorph: inspectWindow listAttributes
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 0.5@1)
			offsets: (0@0 corner: 0@100 negated)).


	inspectWindow outputField: PluggableCodePaneSpec new.
	inspectWindow outputField model: Model new;
								setText: ''.
	inspectWindow outputField readOnly: true.
	inspectWindow outputField: (ToolBuilder default buildPluggableCodePane: inspectWindow outputField).
	
	windowSpec
		addMorph: inspectWindow outputField
		fullFrame: (LayoutFrame
			fractions: (0.5@0 corner: 1@1)
			offsets: (0@0 corner: 0@100 negated)).

	testModel := SqueakTutorialInspectWindowCodeModel new.
	testModel doItReceiver: anObject.
	

	inspectWindow codeInputField: PluggableCodePaneSpec new.
	inspectWindow codeInputField model: testModel;
									setText: ''.
	inspectWindow codeInputField: (ToolBuilder default buildPluggableCodePane: inspectWindow codeInputField).
	
	windowSpec
		addMorph: inspectWindow codeInputField
		fullFrame: (LayoutFrame
			fractions: (0@1 corner: 1@1)
			offsets: (0@100 negated corner: 0@0)).
			
	windowSpec openAsIs.