as yet unclassified
leftBlockBlocked

	| x y |

	(self lesson gridX > 0) ifTrue: [
			x := self lesson gridX - 1.
			y := self lesson gridY.
			^ ((self lesson grid cellAt: x@y) isBlocked).
		] ifFalse: [
			^True.
		].