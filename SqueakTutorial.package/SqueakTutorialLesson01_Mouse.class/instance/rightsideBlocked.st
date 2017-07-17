as yet unclassified
rightsideBlocked

	| x y |
	
	(self lesson gridX < (self lesson grid cellAmount - 1)) ifTrue: [
			x := self lesson gridX + 1.
			y := self lesson gridY.
			Transcript show: ((self lesson grid cellAt: x@y) isBlocked).
			^ (((self lesson grid) cellAt: (x@y)) isBlocked).
		] ifFalse: [
			Transcript show: 'ifFalse'.
			^True.
		].