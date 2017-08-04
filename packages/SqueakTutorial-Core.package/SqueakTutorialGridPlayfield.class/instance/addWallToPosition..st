add / remove
addWallToPosition: aPosition
	"Adds a wall object to be displayed at a specific position in the grid on the playfield"

	| cellExtent wall |
	
	cellExtent := (self grid extent x) / (self grid cellAmount).
	
	wall := SqueakTutorialStoneWall new.
	
	wall morph: ImageMorph new.
	wall morph image: (SqueakTutorialImageCache imageWall scaledToSize: cellExtent@cellExtent);
				setProperty: #Wall toValue: 1.
	
	(self grid cellAt: aPosition) addMorph: wall morph;
							visibleObject: wall.
	
	^ wall