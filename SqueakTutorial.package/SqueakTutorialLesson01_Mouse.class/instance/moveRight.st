mouse controlling
moveRight
	
	self rotate: #right.
	
	((self lesson grid cellAt: ((self lesson gridX + 1)@(self lesson gridY))) isBlocked == True) ifFalse: [
		(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) removeAllMorphs.
		self lesson gridX: self lesson gridX + 1.
		self checkBounds.
		(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) addMorph: self mouseMorph.
	].
	
	(Delay forMilliseconds: 500) wait.