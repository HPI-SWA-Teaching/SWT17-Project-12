mouse controlling
moveLeft
	
	self rotate: #left.
	
	(((self playfield grid cellAt: ((self gridX - 1)@(self gridY))) isBlockedCell: self)) ifFalse: [
		self playfield removeObjectsOfType: #Mouse fromPosition: (self gridX)@(self gridY).
		"(self playfield grid cellAt: ((self gridX)@(self gridY))) removeAllMorphs."
		self gridX: self gridX - 1.
		self checkBounds.
		(self playfield grid cellAt: ((self gridX)@(self gridY))) addMorph: self morph.
	].
	
	(Delay forMilliseconds: 500) wait.