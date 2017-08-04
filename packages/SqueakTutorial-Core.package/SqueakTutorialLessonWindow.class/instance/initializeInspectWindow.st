initialization
initializeInspectWindow
	"Initializes the inspect-window"

	| inspectWindow buttonInspect |
			
	inspectWindow := PluggablePanelSpec new.
	inspectWindow := (ToolBuilder default build: inspectWindow).
	
	buttonInspect := SimpleButtonMorph new.
	buttonInspect
		label: 'INSPECT';
		target: self;
		actionSelector: #openInspectWindow.
	
	inspectWindow addMorph: buttonInspect
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 1@1)
			offsets: (0@0 corner: 0@0)).
			
	self addMorph: inspectWindow
		fullFrame: (LayoutFrame
			fractions: (0@1 corner: 0.5@1)
			offsets: (0@100 negated corner: 0@0)).
