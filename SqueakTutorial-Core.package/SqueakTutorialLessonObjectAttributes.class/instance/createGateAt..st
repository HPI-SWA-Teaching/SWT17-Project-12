as yet unclassified
createGateAt: aPosition
	
	self playfield addObjectOfType: #Gate toPosition: aPosition.
	
	"| morph gateColors gateColor cellExtents |
	
	cellExtents := (self grid extent x) / (self grid cellAmount).
	
	(self grid cellAt: aPosition) isBlocked: true.
	(self grid cellAt: aPosition) isGate: true.
	
	gateColors := #('white' 'grey' 'black').
	gateColor := gateColors atRandom.
	
	(self grid cellAt: aPosition) gateColor: gateColor.
	
	morph := ImageMorph new.
	morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'gate_',gateColor,'.png') fullName) scaledToSize: cellExtents@cellExtents).
	(self grid cellAt: aPosition) addMorph: morph."