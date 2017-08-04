add / remove
removeObjectsOfType: aType fromPosition: aPosition
	"Remove objects of a type from the cell at a position of the grid"

	(grid cellAt: aPosition) deleteSubmorphsWithProperty: aType