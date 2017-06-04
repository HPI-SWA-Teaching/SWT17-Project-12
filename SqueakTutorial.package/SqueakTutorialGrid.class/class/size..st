as yet unclassified
size: aPoint

	| model |
	model := self new.
	model
		numberOfRows: aPoint y;
		numberOfColumns: aPoint x.
	model initialize.
	^model