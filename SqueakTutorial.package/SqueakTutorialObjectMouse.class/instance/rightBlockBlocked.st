as yet unclassified
rightBlockBlocked

	| x y |
	
	(self gridX < (self playfield grid cellAmount - 1)) ifTrue: [
			x := self gridX + 1.
			y := self gridY.
			^ (((self playfield grid) cellAt: (x@y)) isBlocked).
		] ifFalse: [
			^True.
		].