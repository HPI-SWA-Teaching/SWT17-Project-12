as yet unclassified
moveDown
	
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) removeAllMorphs.
	self rotate: #down. (Delay forSeconds: 0.1) wait. self lesson gridY: self lesson gridY + 1.
	
	self checkBounds.
	
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) addMorph: self mouseMorph.