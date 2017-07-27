as yet unclassified
lowerBlockBlocked

	| x y |
	
	(self lesson gridY < (self lesson grid cellAmount - 1)) ifTrue: [
			x := self lesson gridX.
			y := self lesson gridY + 1.
			^ (((self lesson grid) cellAt: (x@y)) isBlocked).
		] ifFalse: [
			^True.
		].