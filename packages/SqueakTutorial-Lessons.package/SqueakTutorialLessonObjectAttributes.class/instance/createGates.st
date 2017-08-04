as yet unclassified
createGates
	"Create gate objects on playfield grid"

	| gatePositions |
	
	gatePositions :=
		{3@3 . 5@5}.
	
	self playfield addObjectOfType: #Gate toPositions: gatePositions.