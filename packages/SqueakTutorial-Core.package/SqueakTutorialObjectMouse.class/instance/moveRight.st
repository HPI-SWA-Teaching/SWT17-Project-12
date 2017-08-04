mouse controlling
moveRight
	"Move the mouse one cell right"
	
	self rotate: #right.
	
	((self gridX + 1) < self playfield grid cellAmount) ifTrue: [
		self rightBlockFree ifTrue: [
			self playfield removeObject: self fromPosition: (self gridX)@(self gridY).
			self gridX: self gridX + 1.
			self playfield addObject: self morph toPosition: (self gridX)@(self gridY)]
		].
	
	(Delay forMilliseconds: 500) wait.