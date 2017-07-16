as yet unclassified
listAttributesIndexSelected: anIndex

	| selectedAttribute |
	selectedAttribute := (self listAttributes getList at: anIndex).
	self outputField setText: (self attributesDict at: selectedAttribute) asString.