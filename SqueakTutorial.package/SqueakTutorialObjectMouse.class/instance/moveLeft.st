mouse controlling
moveLeft
	
	self rotate: #left.
	
	(((self lesson grid cellAt: ((self lesson gridX - 1)@(self lesson gridY))) isBlockedCell: self color)) ifFalse: [
		(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) removeAllMorphs.
		self lesson gridX: self lesson gridX - 1.
		self checkBounds.
		(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) addMorph: self mouseMorph.
	].
	
	(Delay forMilliseconds: 500) wait.