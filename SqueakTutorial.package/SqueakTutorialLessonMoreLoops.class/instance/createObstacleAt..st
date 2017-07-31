as yet unclassified
createObstacleAt: aPosition
	
	self playfield addObjectOfType: #Wall toPosition: aPosition.
	
	"| morph cellExtents |
	
	cellExtents := (self grid extent x) / (self grid cellAmount).
	
	(self grid cellAt: aPosition) isBlocked: true.
	
	morph:= ImageMorph new.
	morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'wall.png') fullName) scaledToSize: cellExtents@cellExtents).
	(self grid cellAt: aPosition) addMorph: morph."