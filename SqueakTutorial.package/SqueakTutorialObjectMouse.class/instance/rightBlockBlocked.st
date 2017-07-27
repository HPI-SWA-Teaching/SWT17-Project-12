as yet unclassified
rightBlockBlocked

	| x y |
	
	(self lesson gridX < (self lesson grid cellAmount - 1)) ifTrue: [
			x := self lesson gridX + 1.
			y := self lesson gridY.
			^ (((self lesson grid) cellAt: (x@y)) isBlocked).
		] ifFalse: [
			^True.
		].