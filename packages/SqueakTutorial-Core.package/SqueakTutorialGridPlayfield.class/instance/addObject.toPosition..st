add / remove
addObject: anObject toPosition: aPosition
	"Adds a specific object to be displayed at a position in the grid on the playfield"

	(self grid cellAt: aPosition) addMorph: anObject