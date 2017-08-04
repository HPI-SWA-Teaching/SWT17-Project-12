bounds
rightBlockBlocked
	"Answers whether the right cell next to the mouse is blocked"

	| x y |
	
	(self gridX = (self playfield grid cellAmount - 1)) ifTrue: [^ true].
	x := self gridX + 1.
	y := self gridY.
	^ (self playfield gridCellAt: (x@y)) isBlockedCell: self