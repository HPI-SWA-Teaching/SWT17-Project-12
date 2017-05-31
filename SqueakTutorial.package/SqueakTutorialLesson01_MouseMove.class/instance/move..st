user commands
move: aDirection
	
	(aDirection = '#up') ifTrue: [self mouseMorph position: (self mouseMorph position x)@(self mouseMorph position y - 10)].
	(aDirection = '#down') ifTrue: [self mouseMorph position: (self mouseMorph position x)@(self mouseMorph position y + 10)].
	(aDirection = '#left') ifTrue: [self mouseMorph position: (self mouseMorph position x - 10)@(self mouseMorph position y)].
	(aDirection = '#right') ifTrue: [self mouseMorph position: (self mouseMorph position x + 10)@(self mouseMorph position y)].