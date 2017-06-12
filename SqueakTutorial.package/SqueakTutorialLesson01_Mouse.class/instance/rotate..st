movement
rotate: newDirection

	| currentDirection |
	currentDirection := self direction.
	
	(currentDirection = #up) ifTrue: [
		(newDirection = #down) ifTrue: [self mouseMorph image rotateBy: 180].
		(newDirection = #right) ifTrue: [self mouseMorph image rotateBy: 90].
		(newDirection = #left) ifTrue: [self mouseMorph image rotateBy: -90].
		].
	(currentDirection = #down) ifTrue: [
		(newDirection = #up) ifTrue: [self mouseMorph image rotateBy: 180].
		(newDirection = #right) ifTrue: [self mouseMorph image rotateBy: -90].
		(newDirection = #left) ifTrue: [self mouseMorph image rotateBy: 90].
		].
	(currentDirection = #left) ifTrue: [
		(newDirection = #up) ifTrue: [self mouseMorph image rotateBy: 90].
		(newDirection = #down) ifTrue: [self mouseMorph image rotateBy: -90].
		(newDirection = #right) ifTrue: [self mouseMorph image rotateBy: 180].
		].
	(currentDirection = #right) ifTrue: [
		(newDirection = #up) ifTrue: [self mouseMorph image rotateBy: -90].
		(newDirection = #down) ifTrue: [self mouseMorph image rotateBy: 90].
		(newDirection = #left) ifTrue: [self mouseMorph image rotateBy: 180].
		].
	
	self direction: newDirection.