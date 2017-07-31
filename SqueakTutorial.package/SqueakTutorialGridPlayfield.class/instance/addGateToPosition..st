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
	gate morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'gate_',gateColor,'.png') fullName) scaledToSize: cellExtent@cellExtent).
	(self grid cellAt: aPosition) addMorph: gate morph.
	
	^ gate