as yet unclassified
createObstacleAt: aPosition
	
	| morph cellExtents |
	
	cellExtents := (self playfield grid extent x) / (self playfield grid cellAmount).
	
	(self playfield grid cellAt: aPosition) isBlocked: True.
	
	morph:= ImageMorph new.
	morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'wall.png') fullName) scaledToSize: cellExtents@cellExtents).
	(self playfield grid cellAt: aPosition) addMorph: morph.