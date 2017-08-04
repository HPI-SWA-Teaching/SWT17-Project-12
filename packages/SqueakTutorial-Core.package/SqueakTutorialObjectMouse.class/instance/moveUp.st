mouse controlling
moveUp
	"Move the mouse one cell up"
	
	self rotate: #up.
	
	((self gridY - 1) >= 0) ifTrue: [
		self upperBlockFree ifTrue: [
			self playfield removeObject: self fromPosition: (self gridX)@(self gridY).
			self gridY: self gridY - 1.
			self playfield addObject: self morph toPosition: (self gridX)@(self gridY)]
		].
	
	(Delay forMilliseconds: 500) wait.