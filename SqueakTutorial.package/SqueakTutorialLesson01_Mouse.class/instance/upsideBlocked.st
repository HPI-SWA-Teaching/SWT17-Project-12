as yet unclassified
upsideBlocked

	| x y |
	
	(self lesson gridY > 0) ifTrue: [
			x := self lesson gridX.
			y := self lesson gridY - 1.
			^ ((self lesson grid cellAt: x@y) isBlocked).
		] ifFalse: [
			^True.
		].