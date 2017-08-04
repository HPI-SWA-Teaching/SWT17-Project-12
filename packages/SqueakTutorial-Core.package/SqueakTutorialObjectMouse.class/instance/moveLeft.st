mouse controlling
moveLeft
	"Move the mouse one cell left"
	
	self rotate: #left.
	
	((self gridX - 1) >= 0) ifTrue: [
		self leftBlockFree ifTrue: [
			self playfield removeObject: self morph fromPosition: (self gridX)@(self gridY).
			self gridX: self gridX - 1.
			self playfield addObject: self morph toPosition: (self gridX)@(self gridY)]
		].
	
	(Delay forMilliseconds: 500) wait.