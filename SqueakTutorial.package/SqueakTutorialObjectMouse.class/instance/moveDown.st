mouse controlling
moveDown
	
	self rotate: #down.
	
	(((self playfield grid cellAt: ((self gridX)@(self gridY + 1))) isBlockedCell: self color)) ifFalse: [
		self playfield removeObjectsOfType: #Mouse fromPosition: (self gridX)@(self gridY).
		"(self playfield grid cellAt: ((self gridX)@(self gridY))) removeAllMorphs."
		self gridY: self gridY + 1.
		self checkBounds.
		(self playfield grid cellAt: ((self gridX)@(self gridY))) addMorph: self mouseMorph.
	].
	
	(Delay forMilliseconds: 500) wait.