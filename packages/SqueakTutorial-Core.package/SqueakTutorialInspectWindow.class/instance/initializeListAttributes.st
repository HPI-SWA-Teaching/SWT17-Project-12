initialization
initializeListAttributes
	"Inititlize the instance of attributes list pane at the left of the inspect window"
	
	self listAttributes: PluggableListSpec new.
	self listAttributes hScrollBarPolicy: #never;
					vScrollBarPolicy: #always.
	self listAttributes: (ToolBuilder default buildPluggableList: self listAttributes).
	self listAttributes on: self 	list: #listAttributesContent
								selected: #listAttributesStartIndex
								changeSelected: #listAttributesIndexSelected:
								menu: nil
								keystroke: nil
	
	