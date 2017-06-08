movement
move: aDirection
	
	(self currentLesson squeakTutorial grid cellAt: ((currentLesson x)@(currentLesson y))) removeAllMorphs.
	
	(aDirection = #up) ifTrue: [self currentLesson y: self currentLesson y - 1].
	(aDirection = #down) ifTrue: [self currentLesson y: self currentLesson y + 1].
	(aDirection = #left) ifTrue: [self currentLesson x: self currentLesson x - 1].
	(aDirection = #right) ifTrue: [self currentLesson x: self currentLesson x + 1].
	
	(self currentLesson squeakTutorial grid cellAt: ((currentLesson x)@(currentLesson y))) addMorph: self mouseMorph.