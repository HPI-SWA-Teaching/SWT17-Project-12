as yet unclassified
size: anInt onMorph: aMorph

	| model |
	model := self new.
	model cellAmount: anInt.
	
	model extent: (aMorph extent x min: aMorph extent y) @ (aMorph extent x min: aMorph extent y).
	model initializeCells.
	
	^model