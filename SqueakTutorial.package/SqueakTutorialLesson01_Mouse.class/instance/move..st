movement
move: aDirection
	
	(self currentLesson squeakTutorial grid cellAt: ((currentLesson gridX)@(currentLesson gridY))) removeAllMorphs.
	
	(aDirection = #up) ifTrue: [self rotate: aDirection. (Delay forSeconds: 0.1) wait. self currentLesson gridY: self currentLesson gridY - 1].
	(aDirection = #down) ifTrue: [self rotate: aDirection. (Delay forSeconds: 0.1) wait. self currentLesson gridY: self currentLesson gridY + 1].
	(aDirection = #left) ifTrue: [self rotate: aDirection. (Delay forSeconds: 0.1) wait. self currentLesson gridX: self currentLesson gridX - 1].
	(aDirection = #right) ifTrue: [self rotate: aDirection. (Delay forSeconds: 0.1) wait. self currentLesson gridX: self currentLesson gridX + 1].
	
	(self currentLesson gridX < 0) ifTrue: [self currentLesson gridX: 0].
	(self currentLesson gridY < 0) ifTrue: [self currentLesson gridY: 0].
	(self currentLesson gridX >= self currentLesson squeakTutorial grid numberOfRows) ifTrue: [self currentLesson gridX: self currentLesson squeakTutorial grid numberOfRows - 1].
	(self currentLesson gridY >= self currentLesson squeakTutorial grid numberOfRows) ifTrue: [self currentLesson gridY: self currentLesson squeakTutorial grid numberOfRows - 1].
	
	(self currentLesson squeakTutorial grid cellAt: ((currentLesson gridX)@(currentLesson gridY))) addMorph: self mouseMorph.