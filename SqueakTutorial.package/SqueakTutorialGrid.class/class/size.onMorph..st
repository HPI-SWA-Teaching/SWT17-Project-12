as yet unclassified
size: anInt onMorph: aMorph

	| model |
	model := self new.
	model cellAmount: anInt.
	
	"Transcript show: ('x - ' , (aMorph extent x / 2) , Character cr).
	Transcript show: ('y - ' , (aMorph extent y - 100), Character cr).
	Transcript show: ('size - ' , (((aMorph extent x / 2) truncated min: (aMorph extent y - 100)) @ ((aMorph extent x / 2) truncated min: (aMorph extent y - 100))))."
	
	model extent: ((aMorph extent x / 2) truncated min: (aMorph extent y - 136)) @ ((aMorph extent x / 2) truncated min: (aMorph extent y - 136)).
	model initializeCells.
	
	model color: (Color r:0.32 g:0.635 b:0.27).
	
	^model