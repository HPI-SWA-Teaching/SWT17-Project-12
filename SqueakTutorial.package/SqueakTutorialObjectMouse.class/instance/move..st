mouse controlling
move: aDirection
	
	(self playfield grid cellAt: ((self gridX)@(self gridY))) removeAllMorphs.
	
	(aDirection = #up) ifTrue: [self rotate: aDirection. (Delay forSeconds: 0.1) wait. self gridY: self gridY - 1].
	(aDirection = #down) ifTrue: [self rotate: aDirection. (Delay forSeconds: 0.1) wait. self gridY: self gridY + 1].
	(aDirection = #left) ifTrue: [self rotate: aDirection. (Delay forSeconds: 0.1) wait. self gridX: self gridX - 1].
	(aDirection = #right) ifTrue: [self rotate: aDirection. (Delay forSeconds: 0.1) wait. self gridX: self gridX + 1].
	
	(self lesson gridX < 0) ifTrue: [self lesson gridX: 0].
	(self lesson gridY < 0) ifTrue: [self lesson gridY: 0].
	(self lesson gridX >= self lesson grid cellAmount) ifTrue: [self lesson gridX: self lesson grid cellAmount - 1].
	(self lesson gridY >= self lesson grid cellAmount) ifTrue: [self lesson gridY: self lesson grid cellAmount - 1].
	
	(self lesson grid cellAt: ((self lesson gridX)@(self lesson gridY))) addMorph: self mouseMorph.
	
"Test comment"