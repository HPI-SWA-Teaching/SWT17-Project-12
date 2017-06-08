as yet unclassified
size: aInt onMorph: aMorph

	| model |
	model := self new.
	model
		numberOfRows: aInt;
		numberOfColumns: aInt.
		
	"SET EXTENT"
	Transcript show: aMorph extent x.
	model extent: (aMorph extent x) @ (aMorph extent x).
	model initializeCells.
	
	^model