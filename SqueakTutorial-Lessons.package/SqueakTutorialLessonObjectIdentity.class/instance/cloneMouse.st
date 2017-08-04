as yet unclassified
cloneMouse

	self mouse2 ifNotNil: [
		(self playfield removeObject: self mouse2 mouseMorph fromPosition: (self mouse2 gridX)@(self mouse2 gridY)).
		self mouse2: nil].

	self mouse2: (self playfield addObjectOfType: #Mouse toPosition: 1@2).
	self mouse2 color: self mouse color