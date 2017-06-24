as yet unclassified
moveRight
	
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) removeAllMorphs.
	self rotate: #right. (Delay forSeconds: 0.1) wait. self lesson gridX: self lesson gridX + 1.
	
	self checkBounds.
	
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) addMorph: self mouseMorph.