initialization
initializeComponents: anObject

	| window |

	window := PluggableWindowSpec new.
	window extent: 400@400.
	window label: 'Inspect Window'.
	window := (ToolBuilder default buildPluggableWindow: window).
	
	self initializeListAttributes.
	self initializeOutputField.
	self initializeCodeInputField: anObject.
	
	self addComponents: window.
	
	window openAsIs