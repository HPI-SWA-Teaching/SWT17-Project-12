mouse controlling
moveLeft
	
	self rotate: #left.
	
	(((self playfield grid cellAt: ((self gridX - 1)@(self gridY))) isBlockedCell: self color)) ifFalse: [
		(self playfield grid cellAt: ((self gridX)@(self gridY))) removeAllMorphs.
		self gridX: self gridX - 1.
		self checkBounds.
		(self playfield grid cellAt: ((self gridX)@(self gridY))) addMorph: self mouseMorph.
	].
	
	(Delay forMilliseconds: 500) wait.