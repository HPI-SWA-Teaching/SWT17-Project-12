add / remove
addGateToPosition: aPosition
	"Adds a gate object to be displayed at a specific position in the grid on the playfield"

	| cellExtent gate |
	
	cellExtent := (self grid extent x) / (self grid cellAmount).
	
	gate := SqueakTutorialGate new.
	
	gate morph: ImageMorph new;
		gateColor: #('white' 'grey' 'black') atRandom..
	
	"TODO BESSER MACHEN"
	(gate gateColor = 'white') ifTrue: [gate morph image: (SqueakTutorialImageCache imageGateWhite scaledToSize: cellExtent@cellExtent)].
	(gate gateColor = 'black') ifTrue: [gate morph image: (SqueakTutorialImageCache imageGateBlack scaledToSize: cellExtent@cellExtent)].
	(gate gateColor = 'grey') ifTrue: [gate morph image: (SqueakTutorialImageCache imageGateGrey scaledToSize: cellExtent@cellExtent)].
	gate morph setProperty: #Gate toValue: 1.
	
	(self grid cellAt: aPosition) addMorph: gate morph;
							visibleObject: gate.
	
	^ gate