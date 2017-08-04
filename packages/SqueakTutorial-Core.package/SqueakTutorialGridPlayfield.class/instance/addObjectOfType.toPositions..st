add / remove
addObjectOfType: aType toPositions: aPositionList
	"Adds objects of a specific type to be displayed at multiple positions in the grid on the playfield"

	aPositionList do: [:position | self addObjectOfType: aType toPosition: position]