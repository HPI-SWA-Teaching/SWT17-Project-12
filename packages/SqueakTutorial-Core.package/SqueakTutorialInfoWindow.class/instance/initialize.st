as yet unclassified
initialize

	self listClasses: PluggableListSpec new.
	self listClasses hScrollBarPolicy: #never.
	self listClasses vScrollBarPolicy: #always.
	self listClasses: (ToolBuilder default buildPluggableList: self listClasses).
	self listClasses 	on: self
					list: #listClassesContents
					selected: #listClassesStartIndex
					changeSelected: #listClassesIndexSelected:
					menu: #empty
					keystroke: #empty.
	
	self listMessages: PluggableListSpec new.
	self listMessages hScrollBarPolicy: #never.
	self listMessages vScrollBarPolicy: #always.
	self listMessages: (ToolBuilder default buildPluggableList: self listMessages).
	self listMessages on: self
					list: #listMessagesContents
					selected: #listMessagesStartIndex
					changeSelected: #listMessagesIndexSelected:
					menu: #empty
					keystroke: #empty.
	
	self messageDescription: PluggableCodePaneSpec new.
	self messageDescription readOnly: true.
	self messageDescription model: Model new.
	self messageDescription setText: ''.
	self messageDescription: (ToolBuilder default buildPluggableCodePane: self messageDescription).