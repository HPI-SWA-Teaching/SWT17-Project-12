user commands
move: aDirection

	(aDirection = '#right') ifTrue: [self mouseMorph position: (self mouseMorph position x + 10)@(self mouseMorph position y)]