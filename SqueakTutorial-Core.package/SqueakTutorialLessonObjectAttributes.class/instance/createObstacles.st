as yet unclassified
createObstacles
	
	self obstaclePositions do: [ :position | self createObstacleAt: ((position at: 1)@(position at: 2))].