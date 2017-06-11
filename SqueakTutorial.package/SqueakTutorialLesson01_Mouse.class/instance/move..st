movement
move: aDirection
	
	(self currentLesson squeakTutorial grid cellAt: ((currentLesson x)@(currentLesson y))) removeAllMorphs.
	
	(aDirection = #up) ifTrue: [self currentLesson y: self currentLesson y - 1].
	(aDirection = #down) ifTrue: [self currentLesson y: self currentLesson y + 1].
	(aDirection = #left) ifTrue: [self currentLesson x: self currentLesson x - 1].
	(aDirection = #right) ifTrue: [self currentLesson x: self currentLesson x + 1].
	
	(self currentLesson x < 0) ifTrue: [self currentLesson x: 0].
	(self currentLesson y < 0) ifTrue: [self currentLesson y: 0].
	(self currentLesson x >= self currentLesson squeakTutorial grid numberOfRows) ifTrue: [self currentLesson x: self currentLesson squeakTutorial grid numberOfRows - 1].
	(self currentLesson y >= self currentLesson squeakTutorial grid numberOfRows) ifTrue: [self currentLesson y: self currentLesson squeakTutorial grid numberOfRows - 1].
	
	(self currentLesson squeakTutorial grid cellAt: ((currentLesson x)@(currentLesson y))) addMorph: self mouseMorph.