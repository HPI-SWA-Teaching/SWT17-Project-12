bounds
upperBlockBlocked
	"Answers whether the upper cell next to the mouse is blocked"

	| x y |
	
	(self gridY = 0) ifTrue: [^ true].
	x := self gridX.
	y := self gridY - 1.
	^ (self playfield gridCellAt: x@y) isBlockedCell: self