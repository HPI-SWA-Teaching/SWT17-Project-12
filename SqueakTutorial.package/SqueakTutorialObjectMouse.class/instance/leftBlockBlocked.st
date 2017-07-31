as yet unclassified
leftBlockBlocked

	| x y |

	(self gridX > 0) ifTrue: [
			x := self gridX - 1.
			y := self gridY.
			^ ((self playfield grid cellAt: x@y) isBlocked).
		] ifFalse: [
			^True.
		].