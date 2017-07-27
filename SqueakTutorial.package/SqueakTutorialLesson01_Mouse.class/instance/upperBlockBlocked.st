as yet unclassified
upperBlockBlocked

	| x y |
	
	(self lesson gridY > 0) ifTrue: [
			x := self lesson gridX.
			y := self lesson gridY - 1.
			^ ((self lesson grid cellAt: x@y) isBlocked).
		] ifFalse: [
			^True.
		].