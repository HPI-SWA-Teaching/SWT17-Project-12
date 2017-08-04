bounds
lowerBlockBlocked
	"Answers whether the bottom cell next to the mouse is blocked"

	| x y |
	
	(self gridY = (self playfield grid cellAmount - 1)) ifTrue: [^ true].
	x := self gridX.
	y := self gridY + 1.
	^ (self playfield gridCellAt: x@y) isBlockedCell: self