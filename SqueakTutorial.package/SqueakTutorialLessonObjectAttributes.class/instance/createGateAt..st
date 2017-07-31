as yet unclassified
createGateAt: aPosition
	
	| morph cellExtents |
	
	cellExtents := (self grid extent x) / (self grid cellAmount).
	
	(self grid cellAt: aPosition) isBlocked: True.
	
	morph:= ImageMorph new.
	morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'torbogen_weiss_downup.png') fullName) scaledToSize: cellExtents@cellExtents).
	(self grid cellAt: aPosition) addMorph: morph.