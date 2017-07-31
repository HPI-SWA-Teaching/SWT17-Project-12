as yet unclassified
lowerBlockBlocked

	| x y |
	
	(self gridY < (self playfield grid cellAmount - 1)) ifTrue: [
			x := self gridX.
			y := self gridY + 1.
			^ (((self playfield grid) cellAt: (x@y)) isBlocked).
		] ifFalse: [
			^True.
		].