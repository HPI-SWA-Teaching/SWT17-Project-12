as yet unclassified
addWallToPosition: aPosition

	"NOT TESTED YET"

	| cellExtent wall |
	
	cellExtent := (self grid extent x) / (self grid cellAmount).
	
	wall := SqueakTutorialStoneWall new.
	
	wall morph: ImageMorph new.
	wall morph image: ((ImageReadWriter formFromFileNamed: (FileDirectory uri: 'wall.png') fullName) scaledToSize: cellExtent@cellExtent).
	
	(self grid cellAt: aPosition) addMorph: wall morph.
	
	^ wall