as yet unclassified
addGateToPosition: aPosition

	| cellExtent gate gateColors gateColor |
	
	cellExtent := (self grid extent x) / (self grid cellAmount).
	
	gate := SqueakTutorialGate new.
	
	(self grid cellAt: aPosition) isBlocked: true.
	(self grid cellAt: aPosition) isGate: true.
	
	gateColors := #('white' 'grey' 'black').
	gateColor := gateColors atRandom.
	
	(self grid cellAt: aPosition) gateColor: gateColor.
	
	gate morph: ImageMorph new.
	"gate morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'gate_',gateColor,'.png') fullName) scaledToSize: cellExtent@cellExtent)."
	
	"TODO BESSER MACHEN"
	(gateColor = 'white') ifTrue: [gate morph image: (SqueakTutorialImageCache imageGateWhite scaledToSize: cellExtent@cellExtent)].
	(gateColor = 'black') ifTrue: [gate morph image: (SqueakTutorialImageCache imageGateBlack scaledToSize: cellExtent@cellExtent)].
	(gateColor = 'grey') ifTrue: [gate morph image: (SqueakTutorialImageCache imageGateGrey scaledToSize: cellExtent@cellExtent)].
	
	(self grid cellAt: aPosition) addMorph: gate morph.
	gate morph setProperty: #Gate toValue: 1.
	
	^ gate