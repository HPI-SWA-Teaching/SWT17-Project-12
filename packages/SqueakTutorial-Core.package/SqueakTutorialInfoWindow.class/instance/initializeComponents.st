as yet unclassified
initializeComponents
	"creates scrollable lists for classes, methods and their descriptions"

	self listClasses: PluggableListSpec new.
	self listClasses hScrollBarPolicy: #never.
	self listClasses vScrollBarPolicy: #always.
	self listClasses: (ToolBuilder default buildPluggableList: self listClasses).
	self listClasses 	on: self
					list: #listClassesContents
					selected: #listClassesStartIndex
					changeSelected: #listClassesIndexSelected:
					menu: nil
					keystroke: nil.
	
	self listMessages: PluggableListSpec new.
	self listMessages hScrollBarPolicy: #never.
	self listMessages vScrollBarPolicy: #always.
	self listMessages: (ToolBuilder default buildPluggableList: self listMessages).
	self listMessages on: self
					list: #listMessagesContents
					selected: #listMessagesStartIndex
					changeSelected: #listMessagesIndexSelected:
					menu: nil
					keystroke: nil.
	
	self messageDescription: PluggableCodePaneSpec new.
	self messageDescription readOnly: true.
	self messageDescription model: Model new.
	self messageDescription setText: ''.
	self messageDescription: (ToolBuilder default buildPluggableCodePane: self messageDescription).