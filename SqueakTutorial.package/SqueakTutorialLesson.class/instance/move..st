accessing
move: aDirection
	
	(aDirection  = '#right') ifTrue: [
		Transcript show: '1'.
		self mouseMorph position: (self mouseMorph position x + 10)@(self mouseMorph position y)]