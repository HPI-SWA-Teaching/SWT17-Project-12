mouse controlling
moveUp
	
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) removeAllMorphs.
	self rotate: #up.
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) addMorph: self mouseMorph.
	
	(Delay forMilliseconds: 500) wait.
	
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) removeAllMorphs.
	self lesson gridY: self lesson gridY - 1.
	self checkBounds.
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) addMorph: self mouseMorph.