as yet unclassified
size: anInt onMorph: aMorph
	"Creates a new instance of the grid"

	| model |
	model := self new.
	model cellAmount: anInt;
		extent: ((aMorph extent x / 2) truncated min: (aMorph extent y)) @ ((aMorph extent x / 2) truncated min: (aMorph extent y));
		initializeCells;
		yourself.
	
	((aMorph extent y) = model extent x) ifTrue: [model position: (((aMorph extent x / 2) - model extent x) / 2)@0].
	
	model color: (Color r:0.32 g:0.635 b:0.27).
	
	^model