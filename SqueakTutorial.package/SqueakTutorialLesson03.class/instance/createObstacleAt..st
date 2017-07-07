as yet unclassified
createObstacleAt: aPosition
	
	| morph cellExtents |
	
	cellExtents := (self grid extent x) / (self grid cellAmount).
	
	(self grid cellAt: aPosition) isBlocked: True.
	
	morph:= ImageMorph new.
	morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'goal.png') fullName) scaledToSize: cellExtents@cellExtents).
	(self grid cellAt: aPosition) addMorph: morph.