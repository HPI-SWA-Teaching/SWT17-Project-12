bounds
checkBounds
	"Check if the mouse is inside of the grid"

	(self gridX < 0) ifTrue: [self lesson gridX: 0].
	(self gridY < 0) ifTrue: [self lesson gridY: 0].
	(self gridX >= self playfield grid cellAmount) ifTrue: [self gridX: self playfield grid cellAmount - 1].
	(self gridY >= self playfield grid cellAmount) ifTrue: [self gridY: self playfield grid cellAmount - 1].