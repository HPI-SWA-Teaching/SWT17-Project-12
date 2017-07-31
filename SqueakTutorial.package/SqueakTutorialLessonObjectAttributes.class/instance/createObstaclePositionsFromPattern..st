as yet unclassified
createObstaclePositionsFromPattern: aPattern

"Pattern has to be a string with 100 characters. Every part of 10 characters represents a line on the grid. Every character represents a cell. '#' represents an Obstacle. '-' represents an empty field."

	| i x y obstacles gates position |

	obstacles := OrderedCollection new.
	gates := OrderedCollection new.
	i := 1.
	"TODO MAGIC NUMBER!!!!!!11111111111111!!!!!!!!!11111!!!!!!"
	[i <= 100.] whileTrue: [
		(((aPattern at: i) asCharacter) == ('#' asCharacter)) ifTrue: [
			x := (i - 1) \\ 10.
			y := (i - 1) // 10.
			position := OrderedCollection new.
			position add: x.
			position add: y.
			obstacles add: position.
		].
		(((aPattern at: i) asCharacter) == ('G' asCharacter)) ifTrue: [
			x := (i - 1) \\ 10.
			y := (i - 1) // 10.
			position := OrderedCollection new.
			position add: x.
			position add: y.
			gates add: position.
		].
		i := i + 1.
	].
	self obstaclePositions: obstacles.
	self gatePositions: gates.
	