as yet unclassified
createGates
	
	self gatePositions do: [ :position | self createGateAt: ((position at: 1)@(position at: 2))].