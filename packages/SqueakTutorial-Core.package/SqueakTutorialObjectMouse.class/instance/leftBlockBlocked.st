bounds
leftBlockBlocked
	"Answers whether the left cell next to the mouse is blocked"

	| x y |

	(self gridX = 0) ifTrue: [^ true].
	x := self gridX - 1.
	y := self gridY.
	^ (self playfield gridCellAt: x@y) isBlockedCell: self