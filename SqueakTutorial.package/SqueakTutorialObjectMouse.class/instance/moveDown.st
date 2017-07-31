mouse controlling
moveDown
	
	self rotate: #down.
	
	(((self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY + 1))) isBlockedCell: self color)) ifFalse: [
		(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) removeAllMorphs.
		self lesson gridY: self lesson gridY + 1.
		self checkBounds.
		(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) addMorph: self mouseMorph.
	].
	
	(Delay forMilliseconds: 500) wait.