movement
move: aDirection
	
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) removeAllMorphs.
	
	(aDirection = #up) ifTrue: [self rotate: aDirection. (Delay forSeconds: 0.1) wait. self lesson gridY: self lesson gridY - 1].
	(aDirection = #down) ifTrue: [self rotate: aDirection. (Delay forSeconds: 0.1) wait. self lesson gridY: self lesson gridY + 1].
	(aDirection = #left) ifTrue: [self rotate: aDirection. (Delay forSeconds: 0.1) wait. self lesson gridX: self lesson gridX - 1].
	(aDirection = #right) ifTrue: [self rotate: aDirection. (Delay forSeconds: 0.1) wait. self lesson gridX: self lesson gridX + 1].
	
	(self lesson gridX < 0) ifTrue: [self lesson gridX: 0].
	(self lesson gridY < 0) ifTrue: [self lesson gridY: 0].
	(self lesson gridX >= self lesson grid cellAmount) ifTrue: [self lesson gridX: self lesson grid cellAmount - 1].
	(self lesson gridY >= self lesson grid cellAmount) ifTrue: [self lesson gridY: self lesson grid cellAmount - 1].
	
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) addMorph: self mouseMorph.