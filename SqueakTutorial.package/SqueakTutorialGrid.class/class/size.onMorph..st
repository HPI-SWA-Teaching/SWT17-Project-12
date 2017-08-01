as yet unclassified
size: anInt onMorph: aMorph

	| model |
	model := self new.
	model cellAmount: anInt.
	
	"model extent: ((aMorph extent x / 2) truncated min: (aMorph extent y - 136)) @ ((aMorph extent x / 2) truncated min: (aMorph extent y - 136))."
	self halt.
	model extent: ((aMorph extent x / 2) truncated min: (aMorph extent y)) @ ((aMorph extent x / 2) truncated min: (aMorph extent y)).
	model initializeCells.
	
	"set position to middle x axis"
	((aMorph extent y - 136) = model extent x) ifTrue: [model position: (((aMorph extent x / 2) - model extent x) / 2)@0].
	
	model color: (Color r:0.32 g:0.635 b:0.27).
	
	^model