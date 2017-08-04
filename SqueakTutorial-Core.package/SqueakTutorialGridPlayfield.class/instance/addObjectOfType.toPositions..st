as yet unclassified
addObjectOfType: aType toPositions: aPositionList

	aPositionList do: [:position | self addObjectOfType: aType toPosition: position]