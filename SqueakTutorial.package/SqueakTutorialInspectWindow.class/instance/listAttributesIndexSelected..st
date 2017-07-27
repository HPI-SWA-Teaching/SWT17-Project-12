as yet unclassified
listAttributesIndexSelected: anIndex

	| selectedAttribute value |
	selectedAttribute := (self listAttributes getList at: anIndex).
	
	value := Compiler evaluate: (self attributesDict at: selectedAttribute) for: self lesson logged: false.
	self outputField setText: value asString.