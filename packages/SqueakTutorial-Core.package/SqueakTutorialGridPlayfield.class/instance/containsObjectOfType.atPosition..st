add / remove
containsObjectOfType: aType atPosition: aPosition
	"Answers if a cell at a position of the grid contains a visible object of a specific type"

	^ (self grid cellAt: aPosition) hasSubmorphWithProperty: aType