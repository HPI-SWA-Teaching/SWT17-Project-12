initialization
openInfoWindow

	| listView proportionalSplitter pasteUp |
	
	self lessonInfoWindow: PluggableWindowSpec new.
	self lessonInfoWindow extent: 400@400.
	self lessonInfoWindow label: 'InfoWindow'.
	
	"PluggableSystemWindow"
	self lessonInfoWindow: (ToolBuilder default buildPluggableWindow: self lessonInfoWindow).
	self lessonInfoWindow openAsIs.
	
	"initialize drop down list"
	listView := PluggableListSpec new.
	listView hScrollBarPolicy: #never.
	listView vScrollBarPolicy: #always.
	listView := ToolBuilder default buildPluggableList: listView.
	"self lessonInfoWindow addPaneMorph: listView."
	
	"proportionalSplitter := ProportionalSplitterMorph new.
	self lessonInfoWindow addMorph: proportionalSplitter.
	proportionalSplitter addLeftOrTop: listView."
	"self lessonInfoWindow addPaneMorph: proportionalSplitter."
	
	pasteUp := PasteUpMorph new.
	self lessonInfoWindow addPaneMorph: pasteUp.
	
	
	