mouse controlling
moveDown
	"Move the mouse one cell down"
	
	self rotate: #down.
	
	((self gridY + 1) < self playfield grid cellAmount) ifTrue: [
		self lowerBlockFree ifTrue: [
			self playfield removeObject: self fromPosition: (self gridX)@(self gridY).
			self gridY: self gridY + 1.
			self playfield addObject: self morph toPosition: (self gridX)@(self gridY)]
		].
	
	(Delay forMilliseconds: 500) wait.