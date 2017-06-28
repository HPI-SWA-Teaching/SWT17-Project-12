as yet unclassified
size: anInt onMorph: aMorph

	| model |
	model := self new.
	model cellAmount: anInt.
	
	model extent: ((aMorph extent x / 2) rounded min: (aMorph extent y)) @ ((aMorph extent x / 2) rounded min: (aMorph extent y)).
	model initializeCells.
	
	model color: (Color r:0.32 g:0.635 b:0.27).
	
	^model