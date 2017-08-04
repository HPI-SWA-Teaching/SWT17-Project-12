as yet unclassified
upperBlockBlocked

	| x y |
	
	(self gridY > 0) ifTrue: [
			x := self gridX.
			y := self gridY - 1.
			^ ((self playfield grid cellAt: x@y) isBlockedCell: self).
		] ifFalse: [
			^True.
		].