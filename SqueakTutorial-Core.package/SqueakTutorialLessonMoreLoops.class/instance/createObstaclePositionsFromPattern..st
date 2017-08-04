nil
createObstaclePositionsFromPattern: aPattern

"Pattern has to be a string with 100 characters. Every part of 10 characters represents a line on the grid. Every character represents a cell. '#' represents an Obstacle. '-' represents an empty field."

	| i x y obstacles position |

	obstacles := OrderedCollection new.
	i := 1.
	[i <= 100.] whileTrue: [
		(((aPattern at: i) asCharacter) == ('#' asCharacter)) ifTrue: [
			x := (i - 1) \\ 10.
			y := (i - 1) // 10.
			position := OrderedCollection new.
			position add: x.
			position add: y.
			obstacles add: position.
		].
		i := i + 1.
	].
	self obstaclePositions: obstacles.
	